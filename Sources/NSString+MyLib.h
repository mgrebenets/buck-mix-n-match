@import Foundation;

NS_ASSUME_NONNULL_BEGIN

@interface NSString (MyLib)
- (NSString *)stringByURLEncodingUsingEncoding:(NSStringEncoding)encoding;
@end

NS_ASSUME_NONNULL_END
