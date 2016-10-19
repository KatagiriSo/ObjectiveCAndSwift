//
//  Util.m
//  UseObjectiveC
//
//  Created by 片桐奏羽 on 2016/10/19.
//  Copyright © 2016年 rodhos. All rights reserved.
//

#import "Util.h"

@implementation Util

- (id)init:(NSString *)name enum:(MyENUM)num {
    self = [super init];
    if (self) {
        self.name = name;
        self.myEnum = num;
    }
    return self;
}

- (NSArray *)getList {
    return @[@"A",@(3),@[@(2),@(4)]];
}

- (MyFlag)getFlag {
    return MyFlagCase2|MyFlagCase3;
}

- (NSArray<NSNumber *> *)addOne:(NSArray<NSNumber *> *)numbers {
    NSMutableArray *list = [NSMutableArray array];
    for (NSNumber *o in numbers) {
        [list addObject:@(o.integerValue + 1)];
    }
    
    return list;
}

- (void)request:(CallBack)callBack {
    callBack(YES);
}

- (BOOL)isOdd:(NSInteger)num {
    return (num%2) == 1;
}



@end


Vector add(Vector *a, Vector *b) {
    Vector v = {a->x + b->x , a->y+b->y};
    return v;
}

Vector add2(Vector a, Vector b) {
    Vector v = {a.x + b.x , a.y+b.y};
    return v;
}

void VectorTwice(Vector *v) {
    v->x = v->x * 2;
    v->y = v->y * 2;
}
