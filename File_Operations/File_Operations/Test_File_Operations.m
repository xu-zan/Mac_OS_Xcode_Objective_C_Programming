/****************************************************************************
 * File name		: Test_File_Operations.m
 * Description		: Define and implement the test case functions for current
 *					  "File_Operations" project.  Design the test cases here.
 * Crreator			: XU ZAN
 * Creation date	: Tue.	Dec. 09, 2014
 * Copyright(C)		2014	All rights reserved.
 *
 ****************************************************************************/


#import "Test_File_Operations.h"
#import "Manage_Files/Test_Manage_Files.h"
#import "Manage_Directories/Test_Manage_Directory.h"
#import "Manipulate_File_Data/Test_Manipulate_FileData.h"
#import "Manage_Process/Test_Manage_Process.h"


void General_Test_Cases(void)
{
	// Perform_TestCase_FileManagement();
	// Perform_TestCase_DirectoryManagement();
	// Perform_TestCase_FileDataReadWrite();
	Perform_TestCase_GetProcessInfo();
	return;
}


void Perform_TestCase_FileManagement(void)
{
	TestCase_File_Management();
}

void Perform_TestCase_DirectoryManagement(void)
{
	TestCase_Directory_Management();
}

void Perform_TestCase_FileDataReadWrite(void)
{
	// TestCase_NSData_FileDataReadWrite();
	TestCase_NSFileHandle_ReadWriteFileContent();
	return;
}

void Perform_TestCase_GetProcessInfo(void)
{
	TestCase_GetProcessInfo();
	TestCase_ConsoleProcessArgumentsSort();
	return;
}