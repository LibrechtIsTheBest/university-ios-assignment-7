
#import "ViewController.h"
#import "PrimeNumberGenerator.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UITextView *counterTextView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    dispatch_queue_t queue =
    dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    
    typeof(self) __weak wself = self;
    dispatch_async(queue, ^{
        
        PrimeNumberGenerator *generator = [[PrimeNumberGenerator alloc] initWithStartNumber:100000000];
        
        while (1) {
            
            NSInteger r = [generator yield];
            
            dispatch_async(dispatch_get_main_queue(), ^{
                
                [wself.counterTextView insertText:[NSString stringWithFormat:@"%ld, ", r]];
            });
        }
    });
}

@end















