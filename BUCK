
# Framework target.
apple_library(
    name='MyLib',
    visibility=['PUBLIC'],
    exported_headers=glob([
        'Sources/**/*.h',
    ]),
    # , excludes=[
    #     'Sources/Bridging-Header.h',
    # ]),
    # bridging_header='Sources/Bridging-Header.h',
    # headers=glob([
    #     'Sources/**/*.h',
    # ]),
    srcs=glob([
        'Sources/**/*.m',
        'Sources/**/*.swift',
    ]),
    tests=[
        ':MyLibTests',
    ],
    frameworks=[
        '$SDKROOT/System/Library/Frameworks/Foundation.framework',
    ],
)

# Unit tests.
apple_test(
    name='MyLibTests',
    info_plist='Tests/Info.plist',
    info_plist_substitutions={
        'PRODUCT_BUNDLE_IDENTIFIER': 'com.example.MyLibTests',
    },
    # bridging_header='Tests/Bridging-Header.h',
    srcs=glob([
        'Tests/**/*.m',
        'Tests/**/*.swift',
    ]),
    linker_flags=[
        '-ObjC',
    ],
    deps=[
        ':MyLib',
    ],
    frameworks=[
        '$PLATFORM_DIR/Developer/Library/Frameworks/XCTest.framework',
    ],
)

# Other library depending on MyLib and using Swift code in Objective-C.
apple_library(
    name='OtherLib',
    exported_headers=glob([
        'OtherLib/**/*.h',
    ]),
    srcs=glob([
        'OtherLib/**/*.m',
        'OtherLib/**/*.swift',
    ]),
    deps=[
        ':MyLib',
    ],
    frameworks=[
        '$SDKROOT/System/Library/Frameworks/Foundation.framework',
    ],
)