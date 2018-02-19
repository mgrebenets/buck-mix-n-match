
#import "NSFileManager+MyLib.h"

@implementation NSFileManager (MyLib)

+ (NSURL *)documentsDirectoryURL {
    return [[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask].lastObject;
}

@end