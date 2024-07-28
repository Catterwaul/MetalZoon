import protocol Metal.MTLRenderCommandEncoder

public extension MTLRenderCommandEncoder {
  func setVertexUniform<Uniform>(
    _ uniform: Uniform,
    at index: Int
  ) {
    setVertexBytes(
      .init(uniform),
      length: MemoryLayout<Uniform>.stride,
      index: index
    )
  }
}
