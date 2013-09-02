/********************************************************************************
 * File name    : Factorial.c
 * Description  : Implements the functions.
 * Creator      : XU ZAN
 * Creation date: Sat.  Aug. 24, 2013
 * Copyright(C)     2013    All rights reserved.
 *
 ********************************************************************************/

#import "Factorial.h"

long int calculateFactorial(int iValue)
{
    long int lResult = 1;
    
    for (int i=1; i<=iValue; i++)
    {
        lResult = lResult * i;
    }
    
    return lResult;
}