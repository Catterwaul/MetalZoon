import Metal

public extension MTLRenderPipelineDescriptor {
  convenience init(
    label: String? = nil,
    vertexFunction: (some MTLFunction)? = nil as (any MTLFunction)?,
    fragmentFunction: (some MTLFunction)? = nil as (any MTLFunction)?,
    maxVertexCallStackDepth: Int? = nil,
    maxFragmentCallStackDepth: Int? = nil,
    vertexDescriptor: MTLVertexDescriptor? = nil,
    colorAttachments: [MTLRenderPipelineColorAttachmentDescriptor] = [],
    depthAttachmentPixelFormat: MTLPixelFormat? = nil
  ) {
    self.init()
    try? self.label = label.wrappedValue()
    try? self.vertexFunction = vertexFunction.wrappedValue()
    try? self.fragmentFunction = fragmentFunction.wrappedValue()
    try? self.maxVertexCallStackDepth = maxVertexCallStackDepth.wrappedValue()
    try? self.maxFragmentCallStackDepth = maxFragmentCallStackDepth.wrappedValue()
    try? self.vertexDescriptor = vertexDescriptor.wrappedValue()
    colorAttachments.indexed().forEach { self.colorAttachments[$0.index] = $0.element }
    try? self.depthAttachmentPixelFormat = depthAttachmentPixelFormat.wrappedValue()
  }
}
