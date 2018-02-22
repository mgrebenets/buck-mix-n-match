
# Framework target.
apple_library(
    name='MyLib',
    visibility=['PUBLIC'],
    exported_headers=glob([
        'Sources/**/*.h',
    ]),
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
    srcs=glob([
        'Tests/**/*.m',
        'Tests/**/*.swift',
    ]),
    # Uber fixed this, yay!
    # linker_flags=[
    #     '-ObjC',
    # ],
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