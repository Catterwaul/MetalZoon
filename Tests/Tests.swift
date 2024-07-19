import Metal
import MetalZoon
import Testing

@Test func defaults() throws {
  let _: MTLDevice = .default
  let _: MTLLibrary = try .default(bundle: .module)

  // The following does not seem to be testable using a Swift Package.
  // let _: MTLLibrary = .default
}

import SwiftUI

private struct View: SwiftUI.View {
  @Environment(\.metalDevice) private var metalDevice
  var body: Never { fatalError() }
}
