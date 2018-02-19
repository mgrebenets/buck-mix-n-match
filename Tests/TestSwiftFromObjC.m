@import XCTest;

#import <MyLib/MyLib-Public-Swift.h>

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