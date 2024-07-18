import Metal

/// A concrete type conforming to `MTLDevice`.
///
/// This exists only as a namespace for static members,
/// as those cannot (yet) exist on `any MTLDevice` itself.
/// A `NeverMetalDevice` is not itself usable as a `MTLDevice`,
/// and has no reason to be instantiated.
///
/// If `MTLDevice` did not derive from `NSObjectProtocol`,
/// we could just use `Never`, instead of this custom object.
public final class NeverMetalDevice: NSObject & MTLDevice { }

public extension MTLDevice where Self == NeverMetalDevice {
  /// The GPU.
  static var `default`: some MTLDevice { MTLCreateSystemDefaultDevice()! }
}
