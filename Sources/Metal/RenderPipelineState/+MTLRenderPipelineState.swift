import Metal

extension NSObject.ExistentialFactory: MTLRenderPipelineState {
  public var maxTotalThreadsPerThreadgroup: Int { fatalError() }
  public var threadgroupSizeMatchesTileSize: Bool  { fatalError() }
  public var imageblockSampleLength: Int { fatalError() }
  public var supportIndirectCommandBuffers: Bool { fatalError() }
  public var maxTotalThreadsPerObjectThreadgroup: Int { fatalError() }
  public var maxTotalThreadsPerMeshThreadgroup: Int { fatalError() }
  public var objectThreadExecutionWidth: Int { fatalError() }
  public var meshThreadExecutionWidth: Int { fatalError() }
  public var maxTotalThreadgroupsPerMeshGrid: Int { fatalError() }
  public var gpuResourceID: MTLResourceID { fatalError() }
  public func imageblockMemoryLength(forDimensions _: MTLSize) -> Int { fatalError() }
  public func functionHandle(function _: any MTLFunction, stage _: MTLRenderStages) -> (any MTLFunctionHandle)? { fatalError() }
  public func makeVisibleFunctionTable(descriptor _: MTLVisibleFunctionTableDescriptor, stage _: MTLRenderStages) -> (any MTLVisibleFunctionTable)? {
    fatalError()
  }
  public func makeIntersectionFunctionTable(descriptor _: MTLIntersectionFunctionTableDescriptor, stage _: MTLRenderStages) -> (any MTLIntersectionFunctionTable)? {
    fatalError()
  }
  public func makeRenderPipelineState(additionalBinaryFunctions _: MTLRenderPipelineFunctionsDescriptor) throws -> any MTLRenderPipelineState {
    fatalError()
  }
}

@available(macOS 15, iOS 18, *) public extension NSObject.ExistentialFactory {
  var shaderValidation: MTLShaderValidation { fatalError() }
}
