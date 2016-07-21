
#import "PrimeNumberGenerator.h"

@interface PrimeNumberGenerator ()

@property (atomic, assign) NSInteger currentNumber;

@end

@implementation PrimeNumberGenerator

- (instancetype)init
{
    self = [self initWithStartNumber:1];
    return self;
}

- (instancetype)initWithStartNumber:(NSInteger)start
{
    if (self = [super init]) {
        
        _currentNumber = start - 1;
    }
    return self;
}

- (NSInteger)yield
{
    self.currentNumber++;
    while (![self isPrime:self.currentNumber]) {
         self.currentNumber++;
    }
    return self.currentNumber;
}

- (BOOL)isPrime:(NSInteger)n
{
    for(NSInteger i = 2; i <= n/2; i++) {
        if(n % i == 0) {
            return NO;
        }
    }
    return YES;
}

@end
