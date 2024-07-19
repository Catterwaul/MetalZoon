import ModelIO

public extension MDLAsset {
  /// All objects contained in the asset of the specified class.
  @inlinable subscript<Object: MDLObject>(_: Object.Type = Object.self) -> [Object] {
    childObjects(of: Object.self) as! [_]
  }
}
