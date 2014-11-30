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
	NSLog(@"Test the NSArray class of objects :");
	
	
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

void TestCase_MutableArrayTypeOfObjects(void)
{
	NSLog(@"Test the NSMutableArray class of objects :");
	
	
	NSMutableArray *cities = [[NSMutableArray alloc] init];		// Instance an object pointer.
	[cities addObject:@"上海"];
	[cities addObject:@"北京"];
	[cities addObject:@"杭州"];
	[cities insertObject:@"深圳" atIndex:2];
	[cities addObject:@"蘇州"];
	[cities insertObject:@"廈門" atIndex:4];
	[cities addObject:@"南京"];
	[cities replaceObjectAtIndex:4 withObject:@"大連"];
	
	for (int i=0; i<[cities count]; i++)
	{
		NSLog(@"%@", [cities objectAtIndex:i]);
	}
}


void Calculate_Print_Multiplier(void)
/* 在1到50之間，把能被3整除的數字放到數組中，
 * 然後打印數組內容
 */
{
	NSLog(@"Print the multipliers, which can be divied by 3, between 1 and 50.");
	
	
	NSMutableArray *nsma = [NSMutableArray arrayWithCapacity:5];
	for (int number=1; number<=50; number++)
	{
		if (number % 3 == 0)
		{
			[nsma addObject:[NSNumber numberWithInteger:number]];
		}
	}
	
	for (int i=0; i<[nsma count]; i++)
	{
		NSLog(@"%li", (long)[[nsma objectAtIndex:i] integerValue]);
	}
}



/*
 * END OF FILE <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
 */