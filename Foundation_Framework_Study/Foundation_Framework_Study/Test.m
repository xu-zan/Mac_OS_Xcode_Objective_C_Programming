/**********************************************************************************
 * File name		: Test.m
 * Description		: General test entry module.
 * Creator			: XU ZAN
 * Creation date	: Wed.	Nov. 5, 2014
 * Copyright(C)		2014	All rights reserved.
 *
 **********************************************************************************/


#import "Test.h"
#import "Number_Object/Test_Number_Object.h"

void General_Test_Case(void)
{
	TestAndVerify_NumberObject();
}



void TestAndVerify_NumberObject(void)
{
	TestCase_NumberTypeOfObject();
}