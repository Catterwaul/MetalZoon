import Metal

public extension MTLFunctionDescriptor {
  convenience init(
    name: String? = nil,
    specializedName: String? = nil,
    constantValues: MTLFunctionConstantValues? = nil,
    options: MTLFunctionOptions? = nil,
    binaryArchives: [some MTLBinaryArchive]? = [any MTLBinaryArchive]?.none
  ) {
    self.init()
    try? self.name = name.wrappedValue()
    try? self.constantValues = constantValues.wrappedValue()
    try? self.specializedName = specializedName.wrappedValue()
    try? self.options = options.wrappedValue()
    try? self.binaryArchives = binaryArchives.wrappedValue()
  }
}
