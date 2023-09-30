//
//  ViewController.m
//  KVO监听数组
//
//  Created by 王璐 on 2023/9/30.
//

#import "ViewController.h"
#import "Model.h"
@interface ViewController ()
@property (strong, nonatomic)Model *model;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _model = [[Model alloc] init];
    [_model addObserver:self forKeyPath:@"modelArray" options:NSKeyValueObservingOptionNew context:nil];
    // Do any additional setup after loading the view.
}
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    if ([keyPath isEqualToString:@"modelArray"]) {
        NSLog(@"%ld", _model.modelArray.count);
    }
}
- (void)dealloc {
    [_model removeObserver:self forKeyPath:@"modelArray"];
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSObject *obj = [[NSObject alloc] init];
    [[_model mutableArrayValueForKeyPath:@"modelArray"] addObject:obj];
}
@end
