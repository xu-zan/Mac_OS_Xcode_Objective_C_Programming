/***************************************************************************************
 * File name		: Manage_Directory.m
 * Description		: NSFileManager类的对象来管理目录
 * Creator			: XU ZAN
 * Creation date	: Sat.	Dec. 27, 2014
 * Copyright(C)		All rights reserved.
 *
 ***************************************************************************************/


#import "Manage_Directory.h"

#import <Foundation/NSString.h>
#import <Foundation/NSFileManager.h>


int NSFileManager_2Manage_Directories(void)
{
	NSString *sDir = @"dir1";
	NSFileManager *fm = nil;
	NSString *path = @"";
	NSDirectoryEnumerator *pDirEnum = nil;
	NSArray *pDirArray = nil;
	
	fm = [NSFileManager defaultManager];
	path = [fm currentDirectoryPath];
	
	NSLog(@"當前的目錄 : %@", path);
	if (NO == [fm createDirectoryAtPath:sDir attributes:nil])
	{
		NSLog(@"目錄創建失敗");
		return -1;
	}
	else if (NO == [fm movePath:sDir toPath:@"dir2" handler:nil])
	{
		NSLog(@"目錄重命名錯誤");
		return -2;
	}
	else if (NO != [fm changeCurrentDirectoryPath:@"lee"])
	{
		NSLog(@"設置目錄失敗");
		return -3;
	}
	
	path = [fm currentDirectoryPath];
	NSLog(@"經過更改， 當前的目錄是：%@", path);
	
	NSLog(@"使用 enumeratorAtPath 方法枚舉目錄");
	pDirEnum = [fm enumeratorAtPath:path];
	while (nil != (path = [pDirEnum nextObject]))
	{
		NSLog(@"%@", path);
	}
	
	NSLog(@"使用 directoryContentsAtPath 方法枚舉目錄");
	pDirArray = [fm directoryContentsAtPath:[fm currentDirectoryPath]];
	for (path in pDirArray)
	{
		NSLog(@"%@", path);
	}
	return 0;
}