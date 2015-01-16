/***********************************************************************
 * File name		: NSData_ReadWrite_FileData.m
 * Description		: 用 NSData 類的對象來讀／寫文件數據。
 * Creator			: XU ZAN
 * Creation date	: Thur.	Jan. 01, 2015
 * Copyright(C)		2015	All rights reserved.
 *
 ***********************************************************************/


#import "NSData_ReadWrite_FileData.h"

#import <Foundation/NSFileManager.h>
#import <Foundation/NSFileHandle.h>


int Read_Write_File_Data(void)
{
	NSFileManager *fm = [NSFileManager defaultManager];
	NSData *fd = [fm contentsAtPath:@"Readme"];
	if (fd == nil)
	{
		NSLog(@"Fail to read the specified file.");
		return -1;
	}
	else if (NO == [fm createFileAtPath:@"Readme1"
							   contents:fd
							 attributes:nil])
	{
		NSLog(@"Fail to create file.");
		return -2;
	}
	
	NSLog(@"The file contents after copied is ::");
	NSLog(@"%@", [NSString stringWithContentsOfFile:@"Readme1"
										   encoding:NSUTF8StringEncoding
											  error:nil]);
	return 0;
}


int NSFileHandle_ReadWriteFile(void)
{
	NSFileHandle *hFile1 = nil, *hFile2 = nil;
	NSData *fData = nil;
	
	hFile1 = [NSFileHandle fileHandleForReadingAtPath:@"Readme"];
	if (hFile1 == nil)
	{
		NSLog(@"打開文件進行讀取操作失敗");
		[hFile1 closeFile];
		return -1;
	}
	[[NSFileManager defaultManager] createFileAtPath:@"Readme1" contents:nil attributes:nil];
	hFile2 = [NSFileHandle fileHandleForWritingAtPath:@"Readme1"];
	if (hFile2 == nil)
	{
		NSLog(@"打開文件進行寫入操作失敗");
		[hFile2 closeFile];
		return -2;
	}
	[hFile2 truncateFileAtOffset:0];
	fData = [hFile1 readDataToEndOfFile];
	[hFile2 writeData:fData];
	
	NSLog(@"將文件Readme讀取的內容寫入Readme1之後：");
	NSLog(@"%@", [NSString stringWithContentsOfFile:@"Readme1"
										   encoding:NSUTF8StringEncoding
											  error:nil]);
	[hFile2 seekToEndOfFile];
	[hFile2 writeData:fData];
	NSLog(@"將文件Readme的內容拷貝到Readme1的末尾後：");
	NSLog(@"%@", [NSString stringWithContentsOfFile:@"Readme1"
										   encoding:NSUTF8StringEncoding
											  error:nil]);
	[hFile1 closeFile];
	[hFile2 closeFile];
	return 0;
}




