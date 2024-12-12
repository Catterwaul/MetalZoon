import AsyncAlgorithms
@preconcurrency import Metal
import MetalZoon
import Testing

@Suite struct MTLCommandBufferTests {
  let device: MTLDevice = .default

  @Test func complete() async {
    let buffer = device.makeCommandQueue()!.makeCommandBuffer()!
    await buffer.complete()
  }

  @Test func test() async {
    let string: String = await withTaskGroup(of: Character.self) { group in
      let buffer = device.makeCommandQueue()!.makeCommandBuffer()!

      group.addTask { @Sendable in
        await buffer.schedulingCompletion
        return "2"
      }

      group.addTask { @Sendable in
        await buffer.completion
        return "3"
      }

      group.addTask {
        buffer.commit()
        return "1"
      }

      return await .init(group)
    }

    #expect(string == "123")
  }
}
