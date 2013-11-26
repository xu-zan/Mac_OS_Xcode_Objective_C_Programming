/***************************************************************************************************
 * File name    : Manager.h
 * Description  : 經理類接口
 * Creator      : XU ZAN
 * Creation date: Sun.  Nov. 3, 2013
 * Copyright(C)     2013    All rights reserved.
 *
 ***************************************************************************************************/


#ifndef MANAGER_H
#define MANAGER_H

#import <Cocoa/Cocoa.h>
#import "Employee.h"

@interface Manager : Employee
{
    NSMutableArray *reports;
}
@property (nonatomic, retain) NSMutableArray *reports;

-(void)addReport:(Employee *)inEmployee;

@end

#endif  /*  MANAGER_H  */