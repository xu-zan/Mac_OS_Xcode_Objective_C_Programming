/***********************************************************************************************************
 * File name        : Test.h
 * Description      : Declare the prototype of a class "Test".
 * Creator          : XU ZAN
 * Creation date    : Sun.  Jan. 12, 2014
 * Copyright(C)     2014    All rights reserved
 *
 ***********************************************************************************************************/


#ifndef TEST_H
#define TEST_H

#import <Foundation/Foundation.h>

@interface Test : NSObject
{
    int iCoordinateX;
    int iCoordinateY;
}

-(void) print;

-(void) SetCoordinateX : (int) iX;

-(void) SetCoordinateY : (int) iY;

-(int) CoordinateX;     // 對象的方法
-(int) CoordinateY;

+(int) StaticIntY;      // 類的方法

/**************************************************************************************
 * 類的方法 和 對象的方法
 *
 * "-" 方法名之前加 "-" 符號的表示是對象的方法
 * "+" 方法名之前加 "+" 符號的表示是類的方法
 **************************************************************************************/

@end

#endif  /*  TEST_H  */
