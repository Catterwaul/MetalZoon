extension UnsafeRawPointer {
  /// A pointer to a value.
  init(_ pointee: some Any) {
    self.init(withUnsafePointer(to: pointee, \.self))
  }
}
