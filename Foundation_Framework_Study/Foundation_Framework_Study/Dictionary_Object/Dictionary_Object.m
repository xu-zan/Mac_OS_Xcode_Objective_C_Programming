/*********************************************************************************
 * File name		: Dictionary_Object.m
 * Description		: 研究字典對象的使用
 * Creator			: XU ZAN
 * Creation date	: Sun.	Nov. 30, 2014
 * Copyright(C)		2014	All rights reserved.
 *
 *********************************************************************************/


#import "Dictionary_Object.h"
#import <Foundation/NSDictionary.h>

void Create_Use_Dictionary_Objects(void)
{
	NSDictionary *employees = [NSDictionary dictionaryWithObjectsAndKeys:@"石刚", @"1",
																		 @"馬亮", @"2",
																		 @"徐贊", @"3",
																		 nil];
	NSString *firstEmployee = [employees objectForKey:@"1"];
	NSLog(@"The first employee ID is %@", firstEmployee);
	
	/*
	for (int i=0; i<[employees count]; i++)
	{
		NSLog(@"Value = %@,  Key = %@", [employees objectForKey:@"1"]);
	}
	 */
}