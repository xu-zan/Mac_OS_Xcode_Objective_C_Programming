/********************************************************************************
 * File name        : Test2.m
 * Description      : 初始化的方法的實現
 * Creator          : XU ZAN
 * Creation date    : Mon.  Jan. 20, 2014
 * Copyright(C)     2014    All rights reserved.
 *
 ********************************************************************************/


#import "Test2.h"

@implementation Test2

@synthesize intX;

-(void) print
{
    NSLog(@"%i", intX);
}

-(Test2 *) initWith:(int) n
{
    self = [super init];
    if (self)
    {
        [self setIntX:n];
    }
    return self;
}

@end
