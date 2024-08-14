import Metal

public extension MTLDevice where Self == NSObject.ExistentialFactory {
  /// The GPU.
  static var `default`: any MTLDevice { MTLCreateSystemDefaultDevice()! }
}
