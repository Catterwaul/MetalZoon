import Metal
import Thrappture

public extension MTLFunctionDescriptor {
  @inlinable convenience init(
    name: String? = nil,
    specializedName: String? = nil,
    constantValues: MTLFunctionConstantValues? = nil,
    options: MTLFunctionOptions? = nil,
    binaryArchives: [some MTLBinaryArchive]? = [any MTLBinaryArchive]?.none
  ) {
    self.init()
    try? self.name = name.get()
    try? self.constantValues = constantValues.get()
    try? self.specializedName = specializedName.get()
    try? self.options = options.get()
    try? self.binaryArchives = binaryArchives.get()
  }
}
