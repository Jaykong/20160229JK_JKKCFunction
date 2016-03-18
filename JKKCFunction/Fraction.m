//
//  Fraction.m
//  JKKCFunction
//
//  Created by trainer on 3/18/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
-(void)print:(void (^) (void))blockf1 {
    printf("the fraction print\n");
   
    blockf1();
    
}
@end
