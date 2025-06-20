import Tuplé
import typealias Metal.MTLFunctionConstantValues

public extension MTLFunctionConstantValues {
  @inlinable convenience init<each Value>(_ value: repeat each Value) {
    self.init()

    for value in repeat each enumerated((repeat each value)) {
      set(value.element, at: value.offset)
    }
  }

  @inlinable func set<Value>(_ value: Value, at index: Int) {
    setConstantValue(.init(value), type: .init(Value.self), index: index)
  }
}
