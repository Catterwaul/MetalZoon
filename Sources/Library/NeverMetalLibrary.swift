import Metal

/// A concrete type conforming to `MTLLibrary`.
///
/// This exists only as a namespace for static members,
/// as those cannot (yet) exist on `any MTLLibrary` itself.
/// A `NeverMetalLibrary` is not itself usable as a `MTLLibrary`,
/// and has no reason to be instantiated.
///
/// If `MTLLibrary` did not derive from `NSObjectProtocol`,
/// we could just use `Never`, instead of this custom object.
public final class NeverMetalLibrary: NSObject & MTLLibrary { }

public extension MTLLibrary where Self == NeverMetalLibrary {
  static var `default`: any MTLLibrary {
    NeverMetalDevice.default.makeDefaultLibrary()!
  }

  /// Creates a Metal library instance that contains the functions in a bundle’s default Metal library.
  static func `default`(bundle: Bundle) throws -> any MTLLibrary {
    try NeverMetalDevice.default.makeDefaultLibrary(bundle: bundle)
  }
}
