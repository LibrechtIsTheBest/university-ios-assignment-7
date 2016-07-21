
#import <Foundation/Foundation.h>

@interface PrimeNumberGenerator : NSObject

- (instancetype)initWithStartNumber:(NSInteger)start;
- (NSInteger)yield;

@end
