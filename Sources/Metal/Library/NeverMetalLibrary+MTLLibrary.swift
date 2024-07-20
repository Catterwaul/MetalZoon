import Metal

public extension NeverMetalLibrary {
  var label: String? {
    get { fatalError() }
    set { fatalError() }
  }

  var device: any MTLDevice  { fatalError() }

  func makeFunction(name functionName: String) -> (any MTLFunction)? {
    fatalError()
  }

  func makeFunction(name: String, constantValues: MTLFunctionConstantValues) throws -> any MTLFunction {
    fatalError()
  }

  func makeFunction(name: String, constantValues: MTLFunctionConstantValues) async throws -> any MTLFunction {
    fatalError()
  }

  func makeFunction(descriptor: MTLFunctionDescriptor) async throws -> any MTLFunction {
    fatalError()
  }

  func makeFunction(descriptor: MTLFunctionDescriptor) throws -> any MTLFunction {
    fatalError()
  }

  func makeIntersectionFunction(descriptor: MTLIntersectionFunctionDescriptor) async throws -> any MTLFunction {
    fatalError()
  }

  func makeIntersectionFunction(descriptor: MTLIntersectionFunctionDescriptor) throws -> any MTLFunction {
    fatalError()
  }

  var functionNames: [String]  { fatalError() }
  var type: MTLLibraryType  { fatalError() }
  var installName: String?  { fatalError() }
}
