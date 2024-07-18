import Metal
import MetalZoon
import Testing

@Test func defaultMetalDevice() {
  let _: MTLDevice = .default
}

import SwiftUI

private struct View: SwiftUI.View {
  @Environment(\.metalDevice) private var metalDevice
  var body: Never { fatalError() }
}
