//
//  main.m
//  JKKCFunction
//
//  Created by trainer on 3/18/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
void description() {
    printf("this is a description");
}
int description2(int a, int b) {
    return a + b;
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        /*
         两种声明无参无返回类型块的方法：
         */
        //方法1：声明一个块：无参无返回类型
        void (^block1)(void);
        //方法2：声明一个块：无参无返回类型
        void (^block2)();
        /*
         1.块是一个无名函数，相当于函数嵌套，块里面的内容只有像函数一样调用了以后才会执行
         2.块的调用和函数的调用一样
         */
        block1 = ^() {
            printf("this is main block\n");
        };//定义块的字面量
        Fraction *f1 = [[Fraction alloc] init];
        [f1 print:block1];
        
    }
    return 0;
}
