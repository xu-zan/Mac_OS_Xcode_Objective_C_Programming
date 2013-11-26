/***************************************************************************************************
 * File name    : Manager.h
 * Description  : 經理類實現
 * Creator      : XU ZAN
 * Creation date: Sun.  Nov. 3, 2013
 * Copyright(C)     2013    All rights reserved.
 *
 ***************************************************************************************************/

#import "Manager.h"

@implementation Manager

@synthesize reports;

-(void)dealloc
{
    for (Employee *employee in reports)
    {
        [employee setManager:nil];
    }
    [self setReports:nil];
    // [super dealloc];
}

-(id)init
{
    if (self = [super init])
    {
        [self setReports:[NSMutableArray array]];
    }
    return self;
}

-(void)addReport:(Employee *)inEmployee
{
    [reports addObject:inEmployee];
    [inEmployee setManager:self];
}

-(double)bonus
{
    return salary * 0.10;
}

@end