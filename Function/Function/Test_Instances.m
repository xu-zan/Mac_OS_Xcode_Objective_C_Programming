/**************************************************************************************************
 * File name    : Test_Instances.c
 * Description  : 編寫測試用例函數
 * Creator      : XU ZAN
 * Creation date: Mon.  Aug. 26, 2013
 * Copyright(C) 2013    All rights reserved.
 *
 **************************************************************************************************/

#import <Foundation/Foundation.h>
#import "Test_Instances.h"
#import "Factorial.h"

void Test_Instances(void)
{
    long int iResult = 0;
    iResult = calculateFactorial(20);
    
    NSLog(@"Factorial(20) = %ld\n", iResult);
    
    
/****************************/
    return;
}