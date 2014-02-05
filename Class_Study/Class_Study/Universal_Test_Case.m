/**********************************************************************************************************************
 * File name        : Universal_Test_Case.m
 * Description      : 調用執行各測試用例
 * Creator          : XU ZAN
 * Creation date    : Wed.  Feb. 05, 2014
 * Copyright(C)     2014    All rights reserved.
 *
 **********************************************************************************************************************/


#import "Universal_Test_Case.h"

#import "ClassTest.h"
#import "Test_Property_Setter_Getter.h"

void Execute_Universal_Test_Case(void)
{
    General_Test_Case();
    
    Test_PropertySetterGetter_Case();
}