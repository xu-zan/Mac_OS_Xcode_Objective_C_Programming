/************************************************************************************************
 * File name    : Member.h
 * Description  : 一個簡單的類， 接口文件
 * Creator      : XU ZAN
 * Creation date: Wed.  Nov. 13, 2013
 * Copyright(C)     2013    All rights reserved.
 *
 ************************************************************************************************/

#import <Foundation/Foundation.h>

@interface Member : NSObject
{
    NSString *name;
    int age;
}

-(NSString *) name;
-(int) age;
-(void) setName:(NSString *) input;
-(void) setAge:(int) input;

@end