import Metal

extension NSObject {
  /// A factory which produces sub-existentials of `NSObjectProtocol`.
  ///
  /// Static members cannot (yet) exist on existentials, which prevents existentials from [providing static member lookups in generic contexts](https://github.com/swiftlang/swift-evolution/blob/main/proposals/0299-extend-generic-static-member-lookup.md).
  /// This provides a mechanism to enable leading dot syntax for existentials.
  ///
  /// `ExistentialFactory` inherits `NSObject` in order to conform to `NSObjectProtocol`.
  /// but is not useful as an object, and should never appear in code, aside from constraining extensions:
  /// ```swift
  /// extension SomeNSObjectProtocol where Self == MetalExistentialFactory
  /// ```
  public final class ExistentialFactory: NSObject { }
}

extension NSObject.ExistentialFactory {
  public var label: String? { get { fatalError() } set { fatalError() } }
  public var device: any MTLDevice { fatalError() }
}
