/*******************************************************************************
 * File name		: Manage_Process.m
 * Description		: 利用NSProcessInfo接口來獲取進程信息
 * Creator			: XU ZAN
 * Creation date	: Sat.	Jan. 10, 2015
 * Copyright(C)		2015	All rights reserved.
 *
 *******************************************************************************/

#import "Manage_Process.h"

#import <Foundation/NSProcessInfo.h>
#import <Foundation/NSArray.h>
#import <Foundation/NSString.h>
#import <Foundation/NSSet.h>
#import <stdio.h>

void NSProcessInfo_GetProcess(void)
{
	NSProcessInfo *proc = [NSProcessInfo processInfo];
	NSArray *args = [proc arguments];
	for (NSString *str in args)
	{
		NSLog(@"當前進程的參數為：%@", str);
	}
	
	NSString *pn = [proc processName];
	NSString *hn = [proc hostName];
	NSString *osn = [proc operatingSystemName];
	NSString *osvs = [proc operatingSystemVersionString];
	NSInteger os = [proc operatingSystem];
	NSLog(@"當前進程的進程名：%@\n當前進程的主機名：%@", pn, hn);
	NSLog(@"當前系統的名稱：%@\n操作系統代表數字：%li\n當前系統的版本號：%@", osn, (long)os, osvs);
}

void Process_Arguments_Sort(void)
{
	NSArray *arr = [[NSProcessInfo processInfo] arguments];
	NSCountedSet *cset1 = [[NSCountedSet alloc] initWithArray:arr];
	NSArray *sorted_arr = [[cset1 allObjects] sortedArrayUsingSelector:@selector(compare:)];
	NSEnumerator *enumr = [sorted_arr objectEnumerator];
	id letter;
	while (letter = [enumr nextObject])
	{
		printf("%s\n", [letter UTF8String]);
	}
	[cset1 removeAllObjects];
}