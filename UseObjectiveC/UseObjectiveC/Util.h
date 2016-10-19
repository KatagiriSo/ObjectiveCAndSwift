//
//  Util.h
//  UseObjectiveC
//
//  Created by 片桐奏羽 on 2016/10/19.
//  Copyright © 2016年 rodhos. All rights reserved.
//

#import <Foundation/Foundation.h>

#define MACRO_USER_NUM = 1

@protocol ProtocolA <NSObject>
- (NSArray<NSNumber *> *)addOne:(NSArray<NSNumber *> *)numbers;
@end

typedef NS_ENUM(NSInteger, MyENUM) {
    MyENUM_NORMAL,
    MyENUM_ERROR
};

typedef NS_OPTIONS(NSInteger, MyFlag) {
    MyFlagNone          = 0,
    MyFlagCase1         = 1 << 0,
    MyFlagCase2         = 1 << 1,
    MyFlagCase3         = 1 << 2,
    MyFlagCase4         = 1 << 3,
};

typedef void (^CallBack)(BOOL result);

@interface Util : NSObject <ProtocolA>
@property NSString *name;
@property MyENUM myEnum;
- (id)init:(NSString *)name enum:(MyENUM)num;
- (NSArray *)getList;
- (MyFlag)getFlag;
- (void)request:(CallBack)callBack;
- (BOOL)isOdd:(NSInteger)num;
@end


typedef struct Vector_type {
    int x;
    int y;
} Vector;


Vector add(Vector *a, Vector *b);
Vector add2(Vector a, Vector b);
void VectorTwice(Vector *v);





