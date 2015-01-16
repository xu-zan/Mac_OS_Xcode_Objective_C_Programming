/******************************************************************************
 * File name		: Test_Manage_Process.m
 * Description		: Design test case to verify the function of "GetProcessInfo".
 * Creator			: XU ZAN
 * Creation date	: Sat.	Jan. 10, 2015
 * Copyright(C)		2015	All rights reserved.
 *
 ******************************************************************************/

#import "Test_Manage_Process.h"
#import "Manage_Process.h"


void TestCase_GetProcessInfo(void)
{
	NSProcessInfo_GetProcess();
}

void TestCase_ConsoleProcessArgumentsSort(void)
{
	Process_Arguments_Sort();
}