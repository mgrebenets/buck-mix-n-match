Buck Mix-n-Match Sample.
===

A sample project that has both Swift and Objective-C mixed together.

- The project is built as a static framework.
- The project has unit tests target.
- Using Uber's fork of `buck`: https://github.com/robbertvanginkel/buck

# Notes

Because Uber's version of `buck` is used, the following is possible:

- No need to use bridging headers to use Objective-C from Swift.
- `import MyLib` and `@import MyLib;` statements work (aka "modular imports").

The modular imports work across libraries, e.g. `OtherLib` can use `@import MyLib;` in Objective-C file.

# Caveats

Trying to use `@import MyLib;` in unit tests Objective-C file doesn't work.
This, however, doesn't work in a static framework project created manually via Xcode.
The import statements only work if `MyLib` is built as dynamic framework.

Trying to use Swift extension from Objective-C unit test doesn't work.
I.e. can't use `_hexadecimalNSString` function from `TestSwiftFromObjC.m`.
The same is true for Xcode static library project created manually.
So it's either a limitation on static libraries or something Apple may fix in the future.
The workaround is to implement the `hexadecimalNSString` in Objective-C category and then it can be used both in unit tests an external frameworks.

While using Facebooks latest version, the `-ObjC` flag is missing, which can lead to crashing unit tests.
Uber seem to have fixed it and `-ObjC` is properly added now.
