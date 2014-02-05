/********************************************************************************
 * File name        : Test2.h
 * Description      : 聲明一個初始化的方法的接口
 * Creator          : XU ZAN
 * Creation date    : Mon.  Jan. 20, 2014
 * Copyright(C)     2014    All rights reserved.
 *
 ********************************************************************************/

#import <Foundation/Foundation.h>

@interface Test2 : NSObject
{
    int intX;
}

@property int intX;

-(void) print;

-(Test2 *) initWith:(int) n;

@end
