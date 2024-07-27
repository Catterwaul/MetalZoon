import protocol Numerics.Real

/// Information needed to transform from eye space to clip space.
///
/// "Clip space" is the half-unit-cube box in positive Z space, that Metal uses.
public struct SymmetricPerspectiveProjection<Scalar: SIMDScalar & Real> {
  /// How far away the near clip plane is from the camera, along its own Z axis.
  ///
  /// Values at this distance will map to "1", in NDC depth.
  var nearClipDistance: Scalar

  /// How far away the far clip plane is from the camera, along its own Z axis.
  ///
  /// Values at this distance will map to "0", in NDC depth.
  ///
  /// - Note: If this is nil, 0 depth will be infinitely far away.
  var farClipDistance: Scalar?

  /// The quotient of the dimensions: "horizontal / vertical".
  var aspectRatio: Scalar

  var fieldOfViewOrientation: CameraFieldOfViewOrientation

  private var fieldOfViewScale: Scalar
}

// MARK: - public
public extension SymmetricPerspectiveProjection {
  init(
    nearClipDistance: Scalar,
    farClipDistance: Scalar? = nil,
    aspectRatio: Scalar,
    fieldOfView: Scalar,
    fieldOfViewOrientation: CameraFieldOfViewOrientation
  ) {
    self.nearClipDistance = nearClipDistance
    self.farClipDistance = farClipDistance
    self.aspectRatio = aspectRatio
    self.fieldOfViewScale = Self.fieldOfViewScale(fieldOfView: fieldOfView)
    self.fieldOfViewOrientation = fieldOfViewOrientation
  }

  private static func fieldOfViewScale(fieldOfView: Scalar) -> Scalar {
    1 / .tan(fieldOfView / 2)
  }

  /// Field of view in radians.
  var fieldOfView: Scalar {
    get { .atan(1 / fieldOfViewScale) * 2 }
    set { fieldOfViewScale = Self.fieldOfViewScale(fieldOfView: newValue) }
  }

  /// Z needs to be scaled by (far - near), which is the depth of
  /// the clipping box, in eye space.
  /// We could subtract near from it first,
  /// but it's faster to do a fused multiply-add,
  /// so we instead similarly scale `near` as well, and subtract that afterwards.
  var transform: (scale: SIMD3<Scalar>, zTranslation: Scalar)  {
    let xyScale: SIMD2 = switch fieldOfViewOrientation {
    case .horizontal: [fieldOfViewScale, fieldOfViewScale / aspectRatio]
    case .vertical: [fieldOfViewScale * aspectRatio, fieldOfViewScale]
    }

    let z = farClipDistance.map { farClipDistance in
      let scale = -nearClipDistance / (farClipDistance - nearClipDistance)
      return (scale, translation: farClipDistance * scale)
    } ?? (scale: 0 as Scalar, translation: nearClipDistance)

    return (
      scale: .init(xyScale, z.scale),
      zTranslation: z.translation
    )
  }

  /// Project a vector from eye space to clip space.
  ///
  /// - Parameter vector: In eye space.
  /// - Returns: `vector`, in clip space. Its `.xyz` will be divided by `.w` for NDC.
  func project(
    vector: consuming SIMD3<Scalar>
  ) -> SIMD4<Scalar> {
    let transform = transform
    let w = vector.z
    vector *= transform.scale
    vector.z += transform.zTranslation
    return .init(vector, w)
  }
}
