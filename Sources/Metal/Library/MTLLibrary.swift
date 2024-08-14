import Metal

public extension MTLLibrary where Self == NSObject.ExistentialFactory {
  @inlinable static var `default`: any MTLLibrary {
    (.default as any MTLDevice).makeDefaultLibrary()!
  }

  /// Creates a Metal library instance that contains the functions in a bundle’s default Metal library.
  @inlinable static func `default`(bundle: Bundle) throws -> any MTLLibrary {
    try (.default as any MTLDevice).makeDefaultLibrary(bundle: bundle)
  }
}
