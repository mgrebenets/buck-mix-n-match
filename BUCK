
# Framework target.
apple_library(
    name='MyLib',
    visibility=['PUBLIC'],
    swift_version = '4.0',
    exported_headers=glob([
        'Sources/**/*.h',
    ], excludes=[
        'Sources/Bridging-Header.h',
    ]),
    bridging_header='Sources/Bridging-Header.h',
    headers=glob([
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
        'PRODUCT_BUNDLE_IDENTIFIER': 'com.example.MyLibsTests',
    },
    bridging_header='Tests/Bridging-Header.h',
    # preprocessor_flags = ['-D', 'PRODUCT_NAME=MyLib'],
    srcs=glob([
        'Tests/**/*.m',
        'Tests/**/*.swift',
    ]),
    deps=[
        ':MyLib',
    ],
    frameworks=[
        '$PLATFORM_DIR/Developer/Library/Frameworks/XCTest.framework',
    ],
)
