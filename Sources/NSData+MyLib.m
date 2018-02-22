
#import "NSData+MyLib.h"

#import "MyLib-Swift.h"

@implementation NSData (MyLib)

- (nonnull NSString *)hexadecimalNSString {
    return [self _hexadecimalNSString];
}

@end
