import Metal

public extension MTLDevice where Self == any MTLDevice {
  /// The GPU.
  static var `default`: any MTLDevice { MTLCreateSystemDefaultDevice()! }
}
