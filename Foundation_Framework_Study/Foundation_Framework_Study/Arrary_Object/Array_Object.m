/*************************************************************************************
 * File name		: Array_Object.m
 * Description		: Study the NSArray objects.
 * Creator			: XU ZAN
 * Creation date	: Sun.	Nov. 30, 2014
 * Copyright(C)		2014	All rights reserved.
 *
 *************************************************************************************/


#import "Array_Object.h"

#import <Foundation/NSArray.h>

void TestCase_ArrayTypeOfObjects(void)
{
	NSArray *city = [NSArray arrayWithObjects:@"上海",
											  @"廣州",
											  @"寧波",
											  @"杭州",
											  @"重慶",
											  @"武漢",
											  nil];
	for (int i=0; i<[city count]; i++)
	{
		NSLog(@"%@", [city objectAtIndex:i]);
	}
}