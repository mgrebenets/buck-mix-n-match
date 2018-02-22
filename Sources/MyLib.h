
@import Foundation;


/// Project version number for MyLib.
FOUNDATION_EXPORT double MyLibVersionNumber;

/// Project version string for MyLib.
FOUNDATION_EXPORT const unsigned char MyLibVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <MyLib/PublicHeader.h>

// Not using <MyLib/PublicHeader.h> format because with this approach it will report these includes as non-modular includes
// when building MyLib as framework

#import <MyLib/NSFileManager+MyLib.h>
#import <MyLib/NSString+MyLib.h>
