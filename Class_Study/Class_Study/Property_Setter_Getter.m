/*****************************************************************************************************
 * File name        : Property_Setter_Getter.m
 * Description      : 研究與測試 @property  @synthesize 屬性的用法
 * Creator          : XU ZAN
 * Creation date    : Wed.  Feb. 05, 2014
 * Copyright(C)     2014    All rights reserved.
 *
 *****************************************************************************************************/

#import "Property_Setter_Getter.h"

@implementation Property_Setter_Getter

@synthesize iMemberX, iMemberY;

-(void) Print
{
    NSLog(@"兩個成員變量相加的結果 ： %i", iMemberX+iMemberY);
}

@end
