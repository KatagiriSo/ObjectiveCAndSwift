//
//  User.m
//  UseSwift
//
//  Created by 片桐奏羽 on 2016/10/19.
//  Copyright © 2016年 rodhos. All rights reserved.
//

#import "User.h"
#import "UseSwift-Swift.h"

@implementation User
- (void)test {
    id c = [SomeClass new];
    [SomeClass hello];
    NSInteger r = [SomeClass addOneWithX:3];
    NSInteger (^ _Nonnull block)(NSInteger)  = [SomeClass addCWithX:2];
    NSLog(@"%ld",(long)block(1)); // 3
    NSLog(@"%ld",(long)block(5)); // 7
    
    
}
@end
