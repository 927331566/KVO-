//
//  Model.m
//  KVO监听数组
//
//  Created by 王璐 on 2023/9/30.
//

#import "Model.h"

@implementation Model
- (NSMutableArray *)modelArray {
    if (!_modelArray) {
        _modelArray = [NSMutableArray array];
    }
    return _modelArray;
}
@end
