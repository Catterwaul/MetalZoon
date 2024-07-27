import Metal

public extension NeverMetalDevice {
  func makeRenderPipelineState(tileDescriptor descriptor: MTLTileRenderPipelineDescriptor, options: MTLPipelineOption) async throws -> (any MTLRenderPipelineState, MTLRenderPipelineReflection?) {
    fatalError()
  }

  func makeRenderPipelineState(tileDescriptor descriptor: MTLTileRenderPipelineDescriptor, options: MTLPipelineOption, reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedRenderPipelineReflection?>?) throws -> any MTLRenderPipelineState {
    fatalError()
  }
  
  func makeComputePipelineState(descriptor: MTLComputePipelineDescriptor, options: MTLPipelineOption) async throws -> (any MTLComputePipelineState, MTLComputePipelineReflection?) {
    fatalError()
  }
  
  func makeComputePipelineState(descriptor: MTLComputePipelineDescriptor, options: MTLPipelineOption, reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedComputePipelineReflection?>?) throws -> any MTLComputePipelineState {
    fatalError()
  }
  
  func makeComputePipelineState(function computeFunction: any MTLFunction, options: MTLPipelineOption) async throws -> (any MTLComputePipelineState, MTLComputePipelineReflection?) {
    fatalError()
  }
  
  func makeComputePipelineState(function computeFunction: any MTLFunction, options: MTLPipelineOption, reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedComputePipelineReflection?>?) throws -> any MTLComputePipelineState {
    fatalError()
  }
  
  func makeComputePipelineState(function computeFunction: any MTLFunction) async throws -> any MTLComputePipelineState {
    fatalError()
  }
  
  func makeComputePipelineState(function computeFunction: any MTLFunction) throws -> any MTLComputePipelineState {
    fatalError()
  }

  func makeRenderPipelineState(descriptor: MTLMeshRenderPipelineDescriptor, options: MTLPipelineOption) async throws -> (any MTLRenderPipelineState, MTLRenderPipelineReflection?) {
    fatalError()
  }
  
  func makeRenderPipelineState(descriptor: MTLRenderPipelineDescriptor, options: MTLPipelineOption) async throws -> (any MTLRenderPipelineState, MTLRenderPipelineReflection?) {
    fatalError()
  }
  
  func makeRenderPipelineState(descriptor: MTLRenderPipelineDescriptor, options: MTLPipelineOption, reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedRenderPipelineReflection?>?) throws -> any MTLRenderPipelineState {
    fatalError()
  }

  func makeRenderPipelineState(descriptor: MTLRenderPipelineDescriptor) async throws -> any MTLRenderPipelineState {
    fatalError()
  }

  func makeRenderPipelineState(descriptor: MTLRenderPipelineDescriptor) throws -> any MTLRenderPipelineState {
    fatalError()
  }

  func makeLibrary(stitchedDescriptor descriptor: MTLStitchedLibraryDescriptor) async throws -> any MTLLibrary {
    fatalError()
  }

  func makeLibrary(stitchedDescriptor descriptor: MTLStitchedLibraryDescriptor) throws -> any MTLLibrary {
    fatalError()
  }

  func makeLibrary(source: String, options: MTLCompileOptions?) async throws -> any MTLLibrary {
    fatalError()
  }
  
  func makeLibrary(source: String, options: MTLCompileOptions?) throws -> any MTLLibrary {
    fatalError()
  }
  
  func makeLibrary(data: dispatch_data_t) throws -> any MTLLibrary {
    fatalError()
  }
  
  func makeLibrary(URL url: URL) throws -> any MTLLibrary {
    fatalError()
  }
  
  func makeLibrary(filepath: String) throws -> any MTLLibrary {
    fatalError()
  }
  
  var name: String { fatalError() }

  var registryID: UInt64 { fatalError() }

  var maxThreadsPerThreadgroup: MTLSize { fatalError() }


  var hasUnifiedMemory: Bool { fatalError() }
  
  var recommendedMaxWorkingSetSize: UInt64 { fatalError() }

  var locationNumber: Int { fatalError() }
  
  var maxTransferRate: UInt64 { fatalError() }

  
  var readWriteTextureSupport: MTLReadWriteTextureTier { fatalError() }

  var argumentBuffersSupport: MTLArgumentBuffersTier { fatalError() }

  var areRasterOrderGroupsSupported: Bool { fatalError() }
  
  var supports32BitFloatFiltering: Bool { fatalError() }
  
  var supports32BitMSAA: Bool { fatalError() }
  
  var supportsQueryTextureLOD: Bool { fatalError() }
  
  var supportsBCTextureCompression: Bool { fatalError() }
  
  var supportsPullModelInterpolation: Bool { fatalError() }
  
  var areBarycentricCoordsSupported: Bool { fatalError() }
  
  var supportsShaderBarycentricCoordinates: Bool { fatalError() }
  
  var currentAllocatedSize: Int { fatalError() }
  
  
  func makeCommandQueue() -> (any MTLCommandQueue)? {
    fatalError()
  }

  func makeCommandQueue(maxCommandBufferCount: Int) -> (any MTLCommandQueue)? {
    fatalError()
  }
  
  func heapTextureSizeAndAlign(descriptor desc: MTLTextureDescriptor) -> MTLSizeAndAlign {
    fatalError()
  }
  
  func heapBufferSizeAndAlign(length: Int, options: MTLResourceOptions = []) -> MTLSizeAndAlign {
    fatalError()
  }
  
  func makeHeap(descriptor: MTLHeapDescriptor) -> (any MTLHeap)? {
    fatalError()
  }
  
  func makeBuffer(length: Int, options: MTLResourceOptions = []) -> (any MTLBuffer)? {
    fatalError()
  }
  
  func makeBuffer(bytes pointer: UnsafeRawPointer, length: Int, options: MTLResourceOptions = []) -> (any MTLBuffer)? {
    fatalError()
  }
  
  func makeBuffer(bytesNoCopy pointer: UnsafeMutableRawPointer, length: Int, options: MTLResourceOptions = [], deallocator: ((UnsafeMutableRawPointer, Int) -> Void)? = nil) -> (any MTLBuffer)? {
    fatalError()
  }
  
  func makeDepthStencilState(descriptor: MTLDepthStencilDescriptor) -> (any MTLDepthStencilState)? {
    fatalError()
  }
  
  func makeTexture(descriptor: MTLTextureDescriptor) -> (any MTLTexture)? {
    fatalError()
  }
  
  func makeTexture(descriptor: MTLTextureDescriptor, iosurface: IOSurfaceRef, plane: Int) -> (any MTLTexture)? {
    fatalError()
  }
  
  func makeSharedTexture(descriptor: MTLTextureDescriptor) -> (any MTLTexture)? {
    fatalError()
  }
  
  func makeSamplerState(descriptor: MTLSamplerDescriptor) -> (any MTLSamplerState)? {
    fatalError()
  }
  
  func makeDefaultLibrary() -> (any MTLLibrary)? {
    fatalError()
  }
  
  func makeDefaultLibrary(bundle: Bundle) throws -> any MTLLibrary {
    fatalError()
  }
  
  func makeFence() -> (any MTLFence)? {
    fatalError()
  }

  func supportsTextureSampleCount(_ sampleCount: Int) -> Bool {
    fatalError()
  }
  
  func minimumLinearTextureAlignment(for format: MTLPixelFormat) -> Int {
    fatalError()
  }
  
  func minimumTextureBufferAlignment(for format: MTLPixelFormat) -> Int {
    fatalError()
  }

  func __newRenderPipelineState(withMeshDescriptor descriptor: MTLMeshRenderPipelineDescriptor, options: MTLPipelineOption, reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedRenderPipelineReflection?>?) throws -> any MTLRenderPipelineState {
    fatalError()
  }
  
  var maxThreadgroupMemoryLength: Int { fatalError() }
  
  var maxArgumentBufferSamplerCount: Int { fatalError() }
  
  var areProgrammableSamplePositionsSupported: Bool { fatalError() }
  
  func __getDefaultSamplePositions(_ positions: UnsafeMutablePointer<MTLSamplePosition>, count: Int) {
    fatalError()
  }
  
  func makeArgumentEncoder(arguments: [MTLArgumentDescriptor]) -> (any MTLArgumentEncoder)? {
    fatalError()
  }
  
  func supportsRasterizationRateMap(layerCount: Int) -> Bool {
    fatalError()
  }

  func makeRasterizationRateMap(descriptor: MTLRasterizationRateMapDescriptor) -> (any MTLRasterizationRateMap)? {
    fatalError()
  }

  func makeIndirectCommandBuffer(descriptor: MTLIndirectCommandBufferDescriptor, maxCommandCount maxCount: Int, options: MTLResourceOptions = []) -> (any MTLIndirectCommandBuffer)? {
    fatalError()
  }

  func makeEvent() -> (any MTLEvent)? {
    fatalError()
  }

  func makeSharedEvent() -> (any MTLSharedEvent)? {
    fatalError()
  }

  func makeSharedEvent(handle sharedEventHandle: MTLSharedEventHandle) -> (any MTLSharedEvent)? {
    fatalError()
  }
  
  var peerGroupID: UInt64 { fatalError() }

  var peerIndex: UInt32 { fatalError() }

  var peerCount: UInt32 { fatalError() }

  func sparseTileSize(with textureType: MTLTextureType, pixelFormat: MTLPixelFormat, sampleCount: Int) -> MTLSize {
    fatalError()
  }
  
  var sparseTileSizeInBytes: Int { fatalError() }

  func sparseTileSizeInBytes(sparsePageSize: MTLSparsePageSize) -> Int {
    fatalError()
  }
  
  func sparseTileSize(textureType: MTLTextureType, pixelFormat: MTLPixelFormat, sampleCount: Int, sparsePageSize: MTLSparsePageSize) -> MTLSize {
    fatalError()
  }
  
  var maxBufferLength: Int { fatalError() }
  
  func __sampleTimestamps(_ cpuTimestamp: UnsafeMutablePointer<MTLTimestamp>, gpuTimestamp: UnsafeMutablePointer<MTLTimestamp>) {
    fatalError()
  }

  func makeArgumentEncoder(bufferBinding: any MTLBufferBinding) -> any MTLArgumentEncoder {
    fatalError()
  }

  func supportsCounterSampling(_ samplingPoint: MTLCounterSamplingPoint) -> Bool {
    fatalError()
  }
  
  func supportsVertexAmplificationCount(_ count: Int) -> Bool {
    fatalError()
  }
  
  var supportsDynamicLibraries: Bool { fatalError() }
  
  var supportsRenderDynamicLibraries: Bool { fatalError() }

  func makeDynamicLibrary(library: any MTLLibrary) throws -> any MTLDynamicLibrary {
    fatalError()
  }

  func makeDynamicLibrary(url: URL) throws -> any MTLDynamicLibrary {
    fatalError()
  }

  func makeBinaryArchive(descriptor: MTLBinaryArchiveDescriptor) throws -> any MTLBinaryArchive {
    fatalError()
  }
  
  var supportsRaytracing: Bool { fatalError() }

  func accelerationStructureSizes(descriptor: MTLAccelerationStructureDescriptor) -> MTLAccelerationStructureSizes {
    fatalError()
  }

  func makeAccelerationStructure(size: Int) -> (any MTLAccelerationStructure)? {
    fatalError()
  }

  func makeAccelerationStructure(descriptor: MTLAccelerationStructureDescriptor) -> (any MTLAccelerationStructure)? {
    fatalError()
  }

  func heapAccelerationStructureSizeAndAlign(size: Int) -> MTLSizeAndAlign {
    fatalError()
  }

  func heapAccelerationStructureSizeAndAlign(descriptor: MTLAccelerationStructureDescriptor) -> MTLSizeAndAlign {
    fatalError()
  }

  var supportsFunctionPointers: Bool { fatalError() }

  var supportsFunctionPointersFromRender: Bool { fatalError() }

  var supportsRaytracingFromRender: Bool { fatalError() }

  var supportsPrimitiveMotionBlur: Bool { fatalError() }

  var shouldMaximizeConcurrentCompilation: Bool {
    get { fatalError() }
    set { fatalError() }
  }

  var maximumConcurrentCompilationTaskCount: Int { fatalError() }

  var counterSets: [any MTLCounterSet]? { fatalError() }

  func supportsFamily(_ gpuFamily: MTLGPUFamily) -> Bool {
    fatalError()
  }

  func makeCounterSampleBuffer(descriptor: MTLCounterSampleBufferDescriptor) throws -> any MTLCounterSampleBuffer {
    fatalError()
  }

  func makeSharedTexture(handle sharedHandle: MTLSharedTextureHandle) -> (any MTLTexture)? {
    fatalError()
  }

  func makeIOHandle(url: URL) throws -> any MTLIOFileHandle {
    fatalError()
  }

  func makeIOCommandQueue(descriptor: MTLIOCommandQueueDescriptor) throws -> any MTLIOCommandQueue {
    fatalError()
  }

  func makeIOHandle(url: URL, compressionMethod: MTLIOCompressionMethod) throws -> any MTLIOFileHandle {
    fatalError()
  }

  func makeIOFileHandle(url: URL) throws -> any MTLIOFileHandle {
    fatalError()
  }

  func makeIOFileHandle(url: URL, compressionMethod: MTLIOCompressionMethod) throws -> any MTLIOFileHandle {
    fatalError()
  }

  var architecture: MTLArchitecture { fatalError() }
}

@available(macOS 15, iOS 18, tvOS 18, *) public extension  NeverMetalDevice {
  func makeResidencySet(descriptor desc: MTLResidencySetDescriptor) throws -> any MTLResidencySet {
    fatalError()
  }

  func makeLogState(descriptor: MTLLogStateDescriptor) throws -> any MTLLogState {
    fatalError()
  }

  func makeCommandQueue(descriptor: MTLCommandQueueDescriptor) -> (any MTLCommandQueue)? {
    fatalError()
  }
}

#if os(macOS)
public extension NeverMetalDevice {
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
public extension NeverMetalDevice {
  func supportsFeatureSet(_ featureSet: MTLFeatureSet) -> Bool {
    fatalError()
  }
}
