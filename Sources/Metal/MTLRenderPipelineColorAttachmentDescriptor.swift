import Metal

public extension MTLRenderPipelineColorAttachmentDescriptor {
  convenience init(
    pixelFormat: MTLPixelFormat? = nil,
    writeMask: MTLColorWriteMask? = nil,
    isBlendingEnabled: Bool? = nil,
    rgbBlendOperation: MTLBlendOperation? = nil,
    alphaBlendOperation: MTLBlendOperation? = nil,
    sourceRGBBlendFactor: MTLBlendFactor? = nil,
    sourceAlphaBlendFactor: MTLBlendFactor? = nil,
    destinationRGBBlendFactor: MTLBlendFactor? = nil,
    destinationAlphaBlendFactor: MTLBlendFactor? = nil
  ) {
    self.init()
    try? self.pixelFormat = pixelFormat.get()
    try? self.writeMask = writeMask.get()
    try? self.isBlendingEnabled = isBlendingEnabled.get()
    try? self.rgbBlendOperation = rgbBlendOperation.get()
    try? self.alphaBlendOperation = alphaBlendOperation.get()
    try? self.sourceRGBBlendFactor = sourceRGBBlendFactor.get()
    try? self.sourceAlphaBlendFactor = sourceAlphaBlendFactor.get()
    try? self.destinationRGBBlendFactor = destinationRGBBlendFactor.get()
    try? self.destinationAlphaBlendFactor = destinationAlphaBlendFactor.get()
  }
}
