import Metal
import SwiftUI

public extension EnvironmentValues {
  /// The GPU.
  @inlinable var metalDevice: any MTLDevice { .default }
}
