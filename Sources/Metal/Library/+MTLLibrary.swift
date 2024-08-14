import Metal

extension NSObject.ExistentialFactory: MTLLibrary {
  public var functionNames: [String]  { fatalError() }
  public var type: MTLLibraryType  { fatalError() }
  public var installName: String?  { fatalError() }

  public func makeFunction(name functionName: String) -> (any MTLFunction)? { fatalError() }
  public func makeFunction(name: String, constantValues: MTLFunctionConstantValues) throws -> any MTLFunction { fatalError() }
  public func makeFunction(name: String, constantValues: MTLFunctionConstantValues) async throws -> any MTLFunction { fatalError() }
  public func makeFunction(descriptor: MTLFunctionDescriptor) async throws -> any MTLFunction { fatalError() }
  public func makeFunction(descriptor: MTLFunctionDescriptor) throws -> any MTLFunction { fatalError() }
  public func makeIntersectionFunction(descriptor: MTLIntersectionFunctionDescriptor) async throws -> any MTLFunction { fatalError() }
  public func makeIntersectionFunction(descriptor: MTLIntersectionFunctionDescriptor) throws -> any MTLFunction { fatalError() }
}
