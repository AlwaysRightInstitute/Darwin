<h2>Darwin
<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/Charles_Darwin_by_Maull_and_Polyblank%2C_1855-crop.png/220px-Charles_Darwin_by_Maull_and_Polyblank%2C_1855-crop.png" align="right">
</h2>

> Also gotta hope nobody creates a module called `Darwin` 😛

Hope dies last, you are welcome.

![Darwin](https://upload.wikimedia.org/wikipedia/commons/b/b1/Charles_Darwin_Signature.svg)

- [Wikipedia](https://en.wikipedia.org/wiki/Charles_Darwin)

### Building on Linux:

```shell
helge@Zini18 Darwin (master)*$ make docker-test
...
[1/1] Compiling Darwin Darwin.swift
[2/2] Merging module Darwin
...
Test Suite 'All tests' passed at 2020-05-21 12:11:27.855
	 Executed 1 test, with 0 failures (0 unexpected) in 0.001 (0.001) seconds
```

### Building on macOS:

Compiler crash, what'd you expect?
[SR-12850](https://bugs.swift.org/browse/SR-12850)

```shell
helge@Zini18 Darwin (master)*$ swift build
<unknown>:0: error: circular dependency between modules 'Darwin' and 'Combine'
Stack dump:
0.	Program arguments: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swift -frontend -c -primary-file /Users/helge/tmp/Darwin/Sources/Darwin/Darwin.swift -emit-module-path /Users/helge/tmp/Darwin/.build/x86_64-apple-macosx/debug/Darwin.build/Darwin~partial.swiftmodule -emit-module-doc-path /Users/helge/tmp/Darwin/.build/x86_64-apple-macosx/debug/Darwin.build/Darwin~partial.swiftdoc -emit-module-source-info-path /Users/helge/tmp/Darwin/.build/x86_64-apple-macosx/debug/Darwin.build/Darwin~partial.swiftsourceinfo -emit-dependencies-path /Users/helge/tmp/Darwin/.build/x86_64-apple-macosx/debug/Darwin.build/Darwin.d -emit-reference-dependencies-path /Users/helge/tmp/Darwin/.build/x86_64-apple-macosx/debug/Darwin.build/Darwin.swiftdeps -target x86_64-apple-macosx10.10 -enable-objc-interop -sdk /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.15.sdk -I /Users/helge/tmp/Darwin/.build/x86_64-apple-macosx/debug -I /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/usr/lib -F /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/Library/Frameworks -color-diagnostics -enable-testing -g -module-cache-path /Users/helge/tmp/Darwin/.build/x86_64-apple-macosx/debug/ModuleCache -swift-version 5 -Onone -D SWIFT_PACKAGE -D DEBUG -enable-anonymous-context-mangled-names -parse-as-library -module-name Darwin -o /Users/helge/tmp/Darwin/.build/x86_64-apple-macosx/debug/Darwin.build/Darwin.swift.o -index-store-path /Users/helge/tmp/Darwin/.build/x86_64-apple-macosx/debug/index/store -index-system-modules 
1.	Apple Swift version 5.2.4 (swiftlang-1103.0.32.9 clang-1103.0.32.53)
0  swift                    0x00000001070694ea PrintStackTraceSignalHandler(void*) + 42
1  swift                    0x0000000107068cc0 SignalHandler(int) + 352
2  libsystem_platform.dylib 0x00007fff6a5a45fd _sigtramp + 29
3  libsystem_platform.dylib 000000000000000000 _sigtramp + 2510666272
4  swift                    0x0000000103b67c75 swift::SerializedModuleLoaderBase::loadModule(swift::SourceLoc, llvm::ArrayRef<std::__1::pair<swift::Identifier, swift::SourceLoc> >) + 581
5  swift                    0x0000000103947890 swift::performNameBinding(swift::SourceFile&, unsigned int) + 2912
6  swift                    0x00000001030c51d2 swift::CompilerInstance::performSemaUpTo(swift::SourceFile::ASTStage_t) + 4354
7  swift                    0x0000000102db19b9 swift::performFrontend(llvm::ArrayRef<char const*>, char const*, void*, swift::FrontendObserver*) + 10281
8  swift                    0x0000000102d32b73 main + 1283
9  libdyld.dylib            0x00007fff6a3abcc9 start + 1
10 libdyld.dylib            0x000000000000002f start + 2512733031
```