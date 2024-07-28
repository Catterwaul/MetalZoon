import protocol Metal.MTLCommandBuffer

public extension MTLCommandBuffer {
  /// Wait until this command buffer is scheduled for execution on the GPU.
  @inlinable var schedulingCompletion: Void {
    get async {
      await withUnsafeContinuation { continuation in
        addScheduledHandler { _ in continuation.resume() }
      }
    }
  }

  /// Wait until the GPU has finished executing the commands in this buffer.
  @inlinable var completion: Void {
    get async {
      await withUnsafeContinuation { continuation in
        addCompletedHandler { _ in continuation.resume() }
      }
    }
  }

  /// Commit this buffer and wait for the GPU to finish executing its commands.
  @inlinable func complete() async {
    await withUnsafeContinuation { continuation in
      addCompletedHandler { _ in continuation.resume() }
      commit()
    }
  }
}
