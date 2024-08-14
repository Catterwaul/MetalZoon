import Metal

extension NSObject.ExistentialFactory: MTLDevice {
  public func makeRenderPipelineState(tileDescriptor descriptor: MTLTileRenderPipelineDescriptor, options: MTLPipelineOption) async throws -> (any MTLRenderPipelineState, MTLRenderPipelineReflection?) { fatalError() }

  public func makeRenderPipelineState(tileDescriptor descriptor: MTLTileRenderPipelineDescriptor, options: MTLPipelineOption, reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedRenderPipelineReflection?>?) throws -> any MTLRenderPipelineState { fatalError() }
  public func makeComputePipelineState(descriptor: MTLComputePipelineDescriptor, options: MTLPipelineOption) async throws -> (any MTLComputePipelineState, MTLComputePipelineReflection?) { fatalError() }
  public func makeComputePipelineState(descriptor: MTLComputePipelineDescriptor, options: MTLPipelineOption, reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedComputePipelineReflection?>?) throws -> any MTLComputePipelineState { fatalError() }
  public func makeComputePipelineState(function computeFunction: any MTLFunction, options: MTLPipelineOption) async throws -> (any MTLComputePipelineState, MTLComputePipelineReflection?) { fatalError() }
  public func makeComputePipelineState(function computeFunction: any MTLFunction, options: MTLPipelineOption, reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedComputePipelineReflection?>?) throws -> any MTLComputePipelineState { fatalError() }
  public func makeComputePipelineState(function computeFunction: any MTLFunction) async throws -> any MTLComputePipelineState { fatalError() }
  public func makeComputePipelineState(function computeFunction: any MTLFunction) throws -> any MTLComputePipelineState { fatalError() }
  public func makeRenderPipelineState(descriptor: MTLMeshRenderPipelineDescriptor, options: MTLPipelineOption) async throws -> (any MTLRenderPipelineState, MTLRenderPipelineReflection?) { fatalError() }
  public func makeRenderPipelineState(descriptor: MTLRenderPipelineDescriptor, options: MTLPipelineOption) async throws -> (any MTLRenderPipelineState, MTLRenderPipelineReflection?) { fatalError() }
  public func makeRenderPipelineState(descriptor: MTLRenderPipelineDescriptor, options: MTLPipelineOption, reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedRenderPipelineReflection?>?) throws -> any MTLRenderPipelineState { fatalError() }
  public func makeRenderPipelineState(descriptor: MTLRenderPipelineDescriptor) async throws -> any MTLRenderPipelineState { fatalError() }
  public func makeRenderPipelineState(descriptor: MTLRenderPipelineDescriptor) throws -> any MTLRenderPipelineState { fatalError() }
  public func makeLibrary(stitchedDescriptor descriptor: MTLStitchedLibraryDescriptor) async throws -> any MTLLibrary { fatalError() }
  public func makeLibrary(stitchedDescriptor descriptor: MTLStitchedLibraryDescriptor) throws -> any MTLLibrary { fatalError() }
  public func makeLibrary(source: String, options: MTLCompileOptions?) async throws -> any MTLLibrary { fatalError() }
  public func makeLibrary(source: String, options: MTLCompileOptions?) throws -> any MTLLibrary { fatalError() }
  public func makeLibrary(data: dispatch_data_t) throws -> any MTLLibrary { fatalError() }
  public func makeLibrary(URL url: URL) throws -> any MTLLibrary { fatalError() }
  public func makeLibrary(filepath: String) throws -> any MTLLibrary { fatalError() }

  public var name: String { fatalError() }
  public var registryID: UInt64 { fatalError() }
  public var maxThreadsPerThreadgroup: MTLSize { fatalError() }
  public var hasUnifiedMemory: Bool { fatalError() }
  public var recommendedMaxWorkingSetSize: UInt64 { fatalError() }
  public var locationNumber: Int { fatalError() }
  public var maxTransferRate: UInt64 { fatalError() }
  public var readWriteTextureSupport: MTLReadWriteTextureTier { fatalError() }
  public var argumentBuffersSupport: MTLArgumentBuffersTier { fatalError() }
  public var areRasterOrderGroupsSupported: Bool { fatalError() }
  public var supports32BitFloatFiltering: Bool { fatalError() }
  public var supports32BitMSAA: Bool { fatalError() }
  public var supportsQueryTextureLOD: Bool { fatalError() }
  public var supportsBCTextureCompression: Bool { fatalError() }
  public var supportsPullModelInterpolation: Bool { fatalError() }
  public var areBarycentricCoordsSupported: Bool { fatalError() }
  public var supportsShaderBarycentricCoordinates: Bool { fatalError() }
  public var currentAllocatedSize: Int { fatalError() }
  
  public func makeCommandQueue() -> (any MTLCommandQueue)? { fatalError() }
  public func makeCommandQueue(maxCommandBufferCount: Int) -> (any MTLCommandQueue)? { fatalError() }
  public func heapTextureSizeAndAlign(descriptor desc: MTLTextureDescriptor) -> MTLSizeAndAlign { fatalError() }
  public func heapBufferSizeAndAlign(length: Int, options: MTLResourceOptions = []) -> MTLSizeAndAlign { fatalError() }
  public func makeHeap(descriptor: MTLHeapDescriptor) -> (any MTLHeap)? { fatalError() }
  public func makeBuffer(length: Int, options: MTLResourceOptions = []) -> (any MTLBuffer)? { fatalError() }
  public func makeBuffer(bytes pointer: UnsafeRawPointer, length: Int, options: MTLResourceOptions = []) -> (any MTLBuffer)? { fatalError() }
  public func makeBuffer(bytesNoCopy pointer: UnsafeMutableRawPointer, length: Int, options: MTLResourceOptions = [], deallocator: ((UnsafeMutableRawPointer, Int) -> Void)? = nil) -> (any MTLBuffer)? { fatalError() }
  public func makeDepthStencilState(descriptor: MTLDepthStencilDescriptor) -> (any MTLDepthStencilState)? { fatalError() }
  public func makeTexture(descriptor: MTLTextureDescriptor) -> (any MTLTexture)? { fatalError() }
  public func makeTexture(descriptor: MTLTextureDescriptor, iosurface: IOSurfaceRef, plane: Int) -> (any MTLTexture)? { fatalError() }
  public func makeSharedTexture(descriptor: MTLTextureDescriptor) -> (any MTLTexture)? { fatalError() }
  public func makeSamplerState(descriptor: MTLSamplerDescriptor) -> (any MTLSamplerState)? { fatalError() }
  public func makeDefaultLibrary() -> (any MTLLibrary)? { fatalError() }
  public func makeDefaultLibrary(bundle: Bundle) throws -> any MTLLibrary { fatalError() }
  public func makeFence() -> (any MTLFence)? { fatalError() }
  public func supportsTextureSampleCount(_ sampleCount: Int) -> Bool { fatalError() }
  public func minimumLinearTextureAlignment(for format: MTLPixelFormat) -> Int { fatalError() }
  public func minimumTextureBufferAlignment(for format: MTLPixelFormat) -> Int { fatalError() }
  public func __newRenderPipelineState(withMeshDescriptor descriptor: MTLMeshRenderPipelineDescriptor, options: MTLPipelineOption, reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedRenderPipelineReflection?>?) throws -> any MTLRenderPipelineState { fatalError() }

  public var  maxThreadgroupMemoryLength: Int { fatalError() }
  public var  maxArgumentBufferSamplerCount: Int { fatalError() }
  public var  areProgrammableSamplePositionsSupported: Bool { fatalError() }
  public func __getDefaultSamplePositions(_ positions: UnsafeMutablePointer<MTLSamplePosition>, count: Int) { fatalError() }
  public func makeArgumentEncoder(arguments: [MTLArgumentDescriptor]) -> (any MTLArgumentEncoder)? { fatalError() }
  public func supportsRasterizationRateMap(layerCount: Int) -> Bool { fatalError() }
  public func makeRasterizationRateMap(descriptor: MTLRasterizationRateMapDescriptor) -> (any MTLRasterizationRateMap)? { fatalError() }
  public func makeIndirectCommandBuffer(descriptor: MTLIndirectCommandBufferDescriptor, maxCommandCount maxCount: Int, options: MTLResourceOptions = []) -> (any MTLIndirectCommandBuffer)? { fatalError() }
  public func makeEvent() -> (any MTLEvent)? { fatalError() }
  public func makeSharedEvent() -> (any MTLSharedEvent)? { fatalError() }
  public func makeSharedEvent(handle sharedEventHandle: MTLSharedEventHandle) -> (any MTLSharedEvent)? { fatalError() }
  public var  peerGroupID: UInt64 { fatalError() }
  public var  peerIndex: UInt32 { fatalError() }
  public var  peerCount: UInt32 { fatalError() }
  public var  sparseTileSizeInBytes: Int { fatalError() }
  public var  supportsDynamicLibraries: Bool { fatalError() }
  public var  supportsRenderDynamicLibraries: Bool { fatalError() }

  public func sparseTileSize(with textureType: MTLTextureType, pixelFormat: MTLPixelFormat, sampleCount: Int) -> MTLSize { fatalError() }
  public func sparseTileSizeInBytes(sparsePageSize: MTLSparsePageSize) -> Int { fatalError() }
  public func sparseTileSize(textureType: MTLTextureType, pixelFormat: MTLPixelFormat, sampleCount: Int, sparsePageSize: MTLSparsePageSize) -> MTLSize { fatalError() }
  public var  maxBufferLength: Int { fatalError() }
  public func __sampleTimestamps(_ cpuTimestamp: UnsafeMutablePointer<MTLTimestamp>, gpuTimestamp: UnsafeMutablePointer<MTLTimestamp>) { fatalError() }
  public func makeArgumentEncoder(bufferBinding: any MTLBufferBinding) -> any MTLArgumentEncoder { fatalError() }
  public func supportsCounterSampling(_ samplingPoint: MTLCounterSamplingPoint) -> Bool { fatalError() }
  public func supportsVertexAmplificationCount(_ count: Int) -> Bool { fatalError() }

  public func makeDynamicLibrary(library: any MTLLibrary) throws -> any MTLDynamicLibrary { fatalError() }
  public func makeDynamicLibrary(url: URL) throws -> any MTLDynamicLibrary { fatalError() }
  public func makeBinaryArchive(descriptor: MTLBinaryArchiveDescriptor) throws -> any MTLBinaryArchive { fatalError() }

  public var  supportsRaytracing: Bool { fatalError() }

  public func accelerationStructureSizes(descriptor: MTLAccelerationStructureDescriptor) -> MTLAccelerationStructureSizes { fatalError() }
  public func makeAccelerationStructure(size: Int) -> (any MTLAccelerationStructure)? { fatalError() }
  public func makeAccelerationStructure(descriptor: MTLAccelerationStructureDescriptor) -> (any MTLAccelerationStructure)? { fatalError() }
  public func heapAccelerationStructureSizeAndAlign(size: Int) -> MTLSizeAndAlign { fatalError() }
  public func heapAccelerationStructureSizeAndAlign(descriptor: MTLAccelerationStructureDescriptor) -> MTLSizeAndAlign { fatalError() }

  public var architecture: MTLArchitecture { fatalError() }
  public var  supportsFunctionPointers: Bool { fatalError() }
  public var  supportsFunctionPointersFromRender: Bool { fatalError() }
  public var  supportsRaytracingFromRender: Bool { fatalError() }
  public var  supportsPrimitiveMotionBlur: Bool { fatalError() }
  public var  shouldMaximizeConcurrentCompilation: Bool { get { fatalError() } set { fatalError() } }
  public var  maximumConcurrentCompilationTaskCount: Int { fatalError() }
  public var  counterSets: [any MTLCounterSet]? { fatalError() }

  public func supportsFamily(_ gpuFamily: MTLGPUFamily) -> Bool { fatalError() }
  public func makeCounterSampleBuffer(descriptor: MTLCounterSampleBufferDescriptor) throws -> any MTLCounterSampleBuffer { fatalError() }
  public func makeSharedTexture(handle sharedHandle: MTLSharedTextureHandle) -> (any MTLTexture)? { fatalError() }
  public func makeIOHandle(url: URL) throws -> any MTLIOFileHandle { fatalError() }
  public func makeIOCommandQueue(descriptor: MTLIOCommandQueueDescriptor) throws -> any MTLIOCommandQueue { fatalError() }
  public func makeIOHandle(url: URL, compressionMethod: MTLIOCompressionMethod) throws -> any MTLIOFileHandle { fatalError() }
  public func makeIOFileHandle(url: URL) throws -> any MTLIOFileHandle { fatalError() }
  public func makeIOFileHandle(url: URL, compressionMethod: MTLIOCompressionMethod) throws -> any MTLIOFileHandle { fatalError() }
}

@available(macOS 15, iOS 18, tvOS 18, *) public extension NSObject.ExistentialFactory {
  func makeResidencySet(descriptor desc: MTLResidencySetDescriptor) throws -> any MTLResidencySet { fatalError() }
  func makeLogState(descriptor: MTLLogStateDescriptor) throws -> any MTLLogState { fatalError() }
  func makeCommandQueue(descriptor: MTLCommandQueueDescriptor) -> (any MTLCommandQueue)? { fatalError() }
}

#if os(macOS)
public extension NSObject.ExistentialFactory {
  var isDepth24Stencil8PixelFormatSupported: Bool { fatalError() }
  var isHeadless: Bool { fatalError() }
  var isLowPower: Bool { fatalError() }
  var isRemovable: Bool { fatalError() }
  var location: MTLDeviceLocation { fatalError() }
}
#endif

@available(macOS, deprecated: 13.0)
@available(iOS, deprecated: 16)
@available(tvOS, deprecated: 16)
public extension NSObject.ExistentialFactory {
  func supportsFeatureSet(_ featureSet: MTLFeatureSet) -> Bool { fatalError() }
}
