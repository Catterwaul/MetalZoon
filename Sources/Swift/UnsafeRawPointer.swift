extension UnsafeRawPointer {
  /// A pointer to a value.
  @usableFromInline init(_ pointee: some Any) {
    self.init(withUnsafePointer(to: pointee, \.self))
  }
}
