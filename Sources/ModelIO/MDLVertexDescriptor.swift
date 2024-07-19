import ModelIO

public extension MDLVertexDescriptor {
  /// A type-safe versions of `attributes`.
  @inlinable var attributeArray: [MDLVertexAttribute] {
    get { attributes as! [_] }
    set { attributes = .init(array: newValue) }
  }

  /// A type-safe versions of `layouts`.
  @inlinable var layoutArray: [MDLVertexBufferLayout] {
    get { layouts as! [_] }
    set { layouts = .init(array: newValue) }
  }
}
