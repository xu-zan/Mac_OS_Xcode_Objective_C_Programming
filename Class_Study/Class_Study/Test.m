/***********************************************************************************************************
 * File name        : Test.m
 * Description      : Implement the class "Test".
 * Creator          : XU ZAN
 * Creation date    : Sun.  Jan. 12, 2014
 * Copyright(C)     2014    All rights reserved
 *
 ***********************************************************************************************************/

#import "Test.h"

static int gs_iStaticY = 10;

@implementation Test

const double Pi = 3.14;
volatile char cTestCharacter = 'T';

-(void) print
{
    NSLog(@"兩數相加的結果 ： %i + %i = %i", iCoordinateX, iCoordinateY, iCoordinateX+iCoordinateY);
}

-(void) SetCoordinateX : (int) iX
{
    iCoordinateX = iX;
}

-(void) SetCoordinateY : (int) iY
{
    iCoordinateY = iY;
}

-(int) CoordinateX
{
    return iCoordinateX;
}

-(int) CoordinateY
{
    return iCoordinateY;
}

+(int) StaticIntY
{
    gs_iStaticY ++;
    return gs_iStaticY;
}

/***************************************************************************************
 * 測試 auto, const, volatile 3種變量類型
 * 對變量所起的作用
 *
 ***************************************************************************************/
-(void) Print_Auto_Const_Volatile_Variable_Types
{
    auto int i = 10;
    NSLog(@"pi = %f", Pi);
    NSLog(@"i = %i", i);
    NSLog(@"The character under test is %c", cTestCharacter);
}


@end
