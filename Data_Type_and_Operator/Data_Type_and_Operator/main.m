/*******************************************************************************************
 * Project          : Data_Type_and_Operator
 * Description      : 學習研究Objective-C編程中的數據類型和運算符
 * =========================================================================================
 * File name        : main.m
 * Description      : This file implements the main() entry function.
 * Creator          : XU ZAN
 * Creation date    : Wed.  Dec. 25, 2013
 * Copyright(C)     2013    All rights reserved.
 *
 *******************************************************************************************/

#import <Foundation/Foundation.h>

#import "Test.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool
    {
        Test_Selector_SEL_Type();
        
        Test_Class_Name();
        
        Test_Difference_Nil_nil();
        
        Test_Bit_Calculation();
        
        Narcissus_Number();
    }
    return 0;
}

