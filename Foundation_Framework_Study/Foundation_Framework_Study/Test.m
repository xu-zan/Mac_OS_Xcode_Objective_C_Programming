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
#import "String_Object/String_Object.h"
#import "Arrary_Object/Test_Array_Object.h"

void General_Test_Case(void)
{
	TestAndVerify_NumberObject();
	
	TestAndVerify_StringObject();
	
	TestAndVerify_ArrayOfObject();
}



void TestAndVerify_NumberObject(void)
{
	TestCase_NumberTypeOfObject();
}

void TestAndVerify_StringObject(void)
{
	TestCase_StringTypeOfObject();
}

void TestAndVerify_ArrayOfObject(void)
{
	Perform_Test_Case_For_Array_Object();
}