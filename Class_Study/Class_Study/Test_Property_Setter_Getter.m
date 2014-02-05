/*********************************************************************************************************
 * File name        : Test_Property_Setter_Getter.m
 * Description      : 測試對屬性的設置與自動獲取， 使用@property, @synthesize來修飾類的成員變量屬性
 * Creator          : XU ZAN
 * Creation date    : Wed.  Feb. 05, 2014
 * Copyright(C)     2014    All rights reserved.
 *
 *********************************************************************************************************/

#import "Test_Property_Setter_Getter.h"
#import "Property_Setter_Getter.h"


void Test_PropertySetterGetter_Case(void)
{
    Property_Setter_Getter *pTestPropertyObj = [[Property_Setter_Getter alloc] init];
    
    [pTestPropertyObj setIMemberX:13];      // 注意 ： 此時并沒有在類 Property_Setter_Getter 中定義 setIMemberX, setIMemberY 兩個方法
    [pTestPropertyObj setIMemberY:14];      //        但為甚麼在此時可以調用未定義的方法呢？
                                            //
                                            //        全因對類的成員變量設置了@property屬性， 此@property屬性標記可對成員變量進行缺省的設置與獲取。
                                            //        在類@implementation時，用@synthesize對變量iMemberX, iMemberY套用設置／獲取的缺省方法。
    
    [pTestPropertyObj Print];
}