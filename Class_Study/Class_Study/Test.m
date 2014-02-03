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


@end
