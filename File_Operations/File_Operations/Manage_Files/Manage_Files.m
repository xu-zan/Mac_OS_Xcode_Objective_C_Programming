/******************************************************************************
 * File name		: Manage_Files.m
 * Description		: The module implementation of "Manage_Files".
 * Creator			: XU ZAN
 * Creation date	: Tue.	Dec. 09, 2014
 * Copyright(C)		2014	All rights reserved.
 *
 ******************************************************************************/


#import "Manage_Files.h"

#import <Foundation/NSString.h>
#import <Foundation/NSFileManager.h>


int Check_File(void)
{
	NSString *sFileName = @"file";
	NSFileManager *fm;
	NSDictionary *nsd;
	
	fm = [NSFileManager defaultManager];
	if ([fm fileExistsAtPath:sFileName] == NO)
	{
		NSLog(@"文件不存在.");
		return 1;
	}
	else if (NO == [fm copyPath:sFileName toPath:@"file1" handler:nil])
	{
		NSLog(@"文件不能拷貝.");
		return 2;
	}
	else if (NO == [fm contentsEqualAtPath:sFileName andPath:@"file1"])
	{
		NSLog(@"文件不相等.");
		return 3;
	}
	else if (NO == [fm movePath:@"file1" toPath:@"file2" handler:nil])
	{
		NSLog(@"文件不能重命名");
		return 4;
	}
	else if (nil == (nsd = [fm fileAttributesAtPath:@"file2" traverseLink:NO]))
	{
		NSLog(@"不能得到文件屬性");
		return 5;
	}
	else if (nsd != nil)
	{
		for (NSString *str in nsd)
		{
			NSLog(@"%@:%@", str, [nsd objectForKey:str]);
		}
	}
	else if (NO == [fm removeFileAtPath:sFileName handler:nil])
	{
		NSLog(@"文件刪除出錯");
		return 7;
	}
	
	NSLog(@"程序正常運行");
	NSLog(@"%@", [NSString stringWithContentsOfFile:@"file2"
										   encoding:NSUTF8StringEncoding
										      error:nil]);
	
	return 0;
}