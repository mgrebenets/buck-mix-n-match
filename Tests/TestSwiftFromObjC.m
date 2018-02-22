@import XCTest;

// This works with latest Facebook version of buck and Xcode
// #import <MyLib/MyLib-Public-Swift.h>

// This works with Uber's version of buck and Xcode
#import <MyLib/MyLib.h>

// This doesn't work with Xcode even in static library projects created from scratch.
// But it does work with dynamic frameworks.
// @import MyLib;

@interface TestSwiftFromObjC : XCTestCase
@end

@implementation TestSwiftFromObjC

- (void)testHexNSString {
    const unsigned char bytes[] = { 0x01, 0x23, 0x45, 0x67, 0x89, 0xAB, 0xCD, 0xEF };
    NSData *data = [NSData dataWithBytes:bytes length:sizeof(bytes)];
    NSString *string = [data hexadecimalNSString];
    XCTAssert([string isEqualToString:@""]);
}

@end
