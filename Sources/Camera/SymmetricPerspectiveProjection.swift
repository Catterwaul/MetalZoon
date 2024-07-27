import protocol Numerics.Real

public struct SymmetricPerspectiveProjection<Scalar: SIMDScalar & Real> {
  public var nearClipDistance: Scalar
  public var farClipDistance: Scalar?
  public var aspectRatio: Scalar
  public var fieldOfViewOrientation: CameraFieldOfViewOrientation
  public var fieldOfViewScale: Scalar
}

// MARK: - SymmetricProjection
extension SymmetricPerspectiveProjection: SymmetricProjection {
  public func project(
    vector: consuming SIMD3<Scalar>
  ) -> SIMD4<Scalar> {
    let transform = transform
    let w = vector.z
    vector *= transform.scale
    vector.z += transform.zTranslation
    return .init(vector, w)
  }
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

  /// Field of view in radians.
  var fieldOfView: Scalar {
    get { .atan(1 / fieldOfViewScale) * 2 }
    set { fieldOfViewScale = Self.fieldOfViewScale(fieldOfView: newValue) }
  }
}

// MARK: - private
private extension SymmetricPerspectiveProjection {
  private static func fieldOfViewScale(fieldOfView: Scalar) -> Scalar {
    1 / .tan(fieldOfView / 2)
  }
}
