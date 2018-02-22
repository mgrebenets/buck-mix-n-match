
@import MyLib;

@interface OtherLibClass : NSObject
+ (void)callSwiftExtension;
@end

@implementation OtherLibClass
+ (void)callSwiftExtension {
    const unsigned char bytes[] = { 0x01, 0x23, 0x45, 0x67, 0x89, 0xAB, 0xCD, 0xEF };
    NSData *data = [NSData dataWithBytes:bytes length:sizeof(bytes)];
    NSString *string = [data hexadecimalNSString];

    // This works, while couldn't do it in unit tests!
    NSString *string2 = [data _hexadecimalNSString];
}
@end
