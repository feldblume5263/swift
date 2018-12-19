// REQUIRES: objc_interop
// RUN: %empty-directory(%t) && %target-swift-frontend -c -update-code -primary-file %s -F %S/mock-sdk -emit-migrated-file-path %t/stdlib_rename.swift.result -emit-remap-file-path %t/stdlib_rename.swift.remap -o /dev/null
// RUN: diff -u %S/stdlib_rename.swift.expected %t/stdlib_rename.swift.result
// RUN: %empty-directory(%t) && %target-swift-frontend -c -update-code -primary-file %s -F %S/mock-sdk -emit-migrated-file-path %t/stdlib_rename.swift.result -emit-remap-file-path %t/stdlib_rename.swift.remap -o /dev/null -swift-version 4.2
// RUN: diff -u %S/stdlib_rename.swift.expected %t/stdlib_rename.swift.result

func test1(_ a: [String], s: String) {
  _ = a.index(of: s)
}
func test2(_ s: String, c: Character) {
  _ = s.index(of: c)
}