import typealias Metal.MTLDataType

public extension MTLDataType {
  @inlinable init<Data>(_: Data.Type = Data.self) {
    switch Data.self {
    case is Bool.Type: self.init(Bool.self)
    case is UInt8.Type: self.init(UInt8.self)
    case is SIMD2<UInt8>.Type: self.init(SIMD2<UInt8>.self)
    case is SIMD3<UInt8>.Type: self.init(SIMD3<UInt8>.self)
    case is SIMD4<UInt8>.Type: self.init(SIMD4<UInt8>.self)
    default: self = .none
    }
  }

  @inlinable init(_: Bool.Type) { self = .bool }
  @inlinable init(_: UInt8.Type) { self = .char }
  @inlinable init(_: SIMD2<UInt8>.Type) { self = .char2 }
  @inlinable init(_: SIMD3<UInt8>.Type) { self = .char3 }
  @inlinable init(_: SIMD4<UInt8>.Type) { self = .char4 }
}
