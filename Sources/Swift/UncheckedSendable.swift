/// A wrapper for existentials, such as many of the types provided by Metal.
@propertyWrapper public struct UncheckedSendable<WrappedValue>: @unchecked Sendable {
  @inlinable public init(wrappedValue: WrappedValue) {
    self.wrappedValue = wrappedValue
  }

  @inlinable public init(projectedValue: Self) {
    self = projectedValue
  }

  public let wrappedValue: WrappedValue
  public var projectedValue: Self { self }
}
