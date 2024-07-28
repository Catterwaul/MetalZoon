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
    try? self.pixelFormat = pixelFormat.wrappedValue()
    try? self.writeMask = writeMask.wrappedValue()
    try? self.isBlendingEnabled = isBlendingEnabled.wrappedValue()
    try? self.rgbBlendOperation = rgbBlendOperation.wrappedValue()
    try? self.alphaBlendOperation = alphaBlendOperation.wrappedValue()
    try? self.sourceRGBBlendFactor = sourceRGBBlendFactor.wrappedValue()
    try? self.sourceAlphaBlendFactor = sourceAlphaBlendFactor.wrappedValue()
    try? self.destinationRGBBlendFactor = destinationRGBBlendFactor.wrappedValue()
    try? self.destinationAlphaBlendFactor = destinationAlphaBlendFactor.wrappedValue()
  }
}
