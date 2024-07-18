import Metal
import SwiftUI

public extension EnvironmentValues {
  /// The GPU.
  var metalDevice: any MTLDevice { .default }
}
