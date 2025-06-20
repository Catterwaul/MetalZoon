import Metal
import Thrappture

public extension MTLRenderPipelineDescriptor {
  @inlinable convenience init(
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
    try? self.label = label.get()
    try? self.vertexFunction = vertexFunction.get()
    try? self.fragmentFunction = fragmentFunction.get()
    try? self.maxVertexCallStackDepth = maxVertexCallStackDepth.get()
    try? self.maxFragmentCallStackDepth = maxFragmentCallStackDepth.get()
    try? self.vertexDescriptor = vertexDescriptor.get()
    colorAttachments.enumerated().forEach { self.colorAttachments[$0.offset] = $0.element }
    try? self.depthAttachmentPixelFormat = depthAttachmentPixelFormat.get()
  }
}
