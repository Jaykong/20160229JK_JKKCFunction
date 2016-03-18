//
//  main.m
//  JKKCFunction
//
//  Created by trainer on 3/18/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
typedef void (^Block)(void);
typedef int (^Block2)(int,int);
typedef int (^Block3) (NSString *str1,NSString *str2);
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //声明无参无类型块
        Block block1;
        Block2 block2;
        Block3 block3;
        
        //定义块的字面量
        block1 = ^() {
            printf("this is a block1\n");
        };
        block2 = ^(int x ,int y) {
            return x - y;
        };
        
        NSArray *arr = @[@"1",@"2",@"3"];
        [arr enumerateObjectsUsingBlock:^(NSString *obj, NSUInteger idx, BOOL *stop) {
            NSLog(@"the string is %@",obj);
            *stop = YES;
       }];
        
        block3 = ^(NSString *str1,NSString* str2) {
            return 3;
        };
        //执行块
        block1();
        int add = block2(3,4);
        printf("add result :%i\n",add);
#pragma mark ------------------
    }
    return 0;
}
