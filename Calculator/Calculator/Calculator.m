/*****************************************************************************************************
 * File name    : Calculator.m
 * Description  : Implements the functions of Calculator.
 * Creator      : XU ZAN
 * Creation date: Sun.  Sep. 28, 2013
 * Copyright(C)     2013    All rights reserved.
 *
 *****************************************************************************************************/

#import "Calculator.h"


BOOL isAnOperator(const char value)
{
    return ( (value == '+') ||
             (value == '-') ||
             (value == '*') ||
             (value == '/') );
}

/*
 * END OF FILE <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
 */