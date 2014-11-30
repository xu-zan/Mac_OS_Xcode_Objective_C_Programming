/************************************************************************************
 * File name		: Test_Array_Object.m
 * Description		: to perform the test case of Array_Object.
 * Creator			: XU ZAN
 * Creation date	: Sun.	Nov. 30, 2014
 * Copyright(C)		2014	All rights reserved.
 *
 ************************************************************************************/

#import "Test_Array_Object.h"
#import "Array_Object.h"

#import "Array_Objects_Sorting/Array_Objects_Sorting.h"


void Perform_Test_Case_For_Array_Object(void)
{
	TestCase_ArrayTypeOfObjects();
	
	TestCase_MutableArrayTypeOfObjects();
	
	Calculate_Print_Multiplier();
}

void Test_Array_Objects_Sorting(void)
{
	TestCase_ArrayObjectsSorting();
}
