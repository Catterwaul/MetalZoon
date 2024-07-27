import protocol Numerics.Real
import SIMDson

public struct SymmetricOrthographicProjection<Scalar: SIMDScalar & Real> {
  public var nearClipDistance: Scalar
  public var farClipDistance: Scalar?
  public var aspectRatio: Scalar
  public var fieldOfViewOrientation: CameraFieldOfViewOrientation
  public var fieldOfViewScale: Scalar
}

// MARK: - SymmetricProjection
extension SymmetricOrthographicProjection: SymmetricProjection {
  public func project(
    vector: consuming SIMD3<Scalar>
  ) -> SIMD4<Scalar> {
    var vector = SymmetricPerspectiveProjection(
      nearClipDistance: nearClipDistance,
      farClipDistance: farClipDistance,
      aspectRatio: aspectRatio,
      fieldOfViewOrientation: fieldOfViewOrientation,
      fieldOfViewScale: fieldOfViewScale
    ).project(vector: vector)
    vector[0, 1] *= vector.z
    return vector
  }
}

// MARK: - public
public extension SymmetricOrthographicProjection {
  init(
    nearClipDistance: Scalar,
    farClipDistance: Scalar? = nil,
    aspectRatio: Scalar,
    size: Scalar,
    scaleDirection: CameraFieldOfViewOrientation
  ) {
    self.nearClipDistance = nearClipDistance
    self.farClipDistance = farClipDistance
    self.aspectRatio = aspectRatio
    self.fieldOfViewScale = Self.fieldOfViewScale(fieldOfView: size)
    self.fieldOfViewOrientation = scaleDirection
  }

  /// Field of view in eye space.
  var scale: Scalar {
    get { 1 / fieldOfViewScale }
    set { fieldOfViewScale = Self.fieldOfViewScale(fieldOfView: newValue) }
  }
}

// MARK: - private
private extension SymmetricOrthographicProjection {
  private static func fieldOfViewScale(fieldOfView: Scalar) -> Scalar {
    1 / fieldOfView
  }
}
