/********************************************************************************
 * File name		: Test_Manipulate_FileDate.m
 * Description		: 測試NSData對文件數據的操作。
 * Creator			: XU ZAN
 * Creation date	: Sat.	Jan. 10, 2015
 * Copyright(C)		2015	All rights reserved.
 *
 ********************************************************************************/


#import "Test_Manipulate_FileData.h"
#import "NSData_ReadWrite_FileData.h"

void TestCase_NSData_FileDataReadWrite(void)
{
	Read_Write_File_Data();
}

void TestCase_NSFileHandle_ReadWriteFileContent(void)
{
	NSFileHandle_ReadWriteFile();
}