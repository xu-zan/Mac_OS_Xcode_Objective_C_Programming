/************************************************************************************************
 * File name		: Number_Type.m
 * Description		: Study the type of NSNumber-class object.
 * Creator			: XU ZAN
 * Creation date	: Wed.	Nov. 5, 2014
 * Copyright(C)		2014	All rights reserved.
 *
 ************************************************************************************************/

#import <Foundation/Foundation.h>

#import "Number_Object.h"


void Number_Type_Example(void)
{
	NSNumber *pMyNumber, *pfNumber, *piNumber;
	
	// 创建 integer 类型对象
	piNumber = [NSNumber numberWithInteger:245];
	NSLog(@"Current integer number is %li", (long)[piNumber integerValue]);
	
	// 创建 long 类型对象
	pMyNumber = [NSNumber numberWithLong:0x01ACBD7F];
	NSLog(@"Current long number is 0x%08lX", [pMyNumber longValue]);
	
	// 创建 char 类型对象
	pMyNumber = [NSNumber numberWithChar:'K'];
	NSLog(@"Current character is %c", [pMyNumber charValue]);
	
	// 创建 float 类型对象
	pfNumber = [NSNumber numberWithFloat:7.5402];
	NSLog(@"Current float number is %f", [pfNumber floatValue]);
	
	// 創建 double 類型對象
	pMyNumber = [NSNumber numberWithDouble:1.12233e+15];
	NSLog(@"Current double number is %lg", [pMyNumber doubleValue]);
	
	/**************************************************************************/
	
	// 判断两个对象的值是否相等
	if (YES == [piNumber isEqualToNumber:pfNumber])
	{
		NSLog(@"The integer object 'piNumber' is equal to float object 'pfNumber' in number.");
	}
	else
	{
		NSLog(@"They are not equal.");
	}
	
	// 比较两个对象的值的大小
	if ([piNumber compare:pMyNumber] == NSOrderedAscending)
	{
		NSLog(@"'piNumber' is bigger than 'pMyNumber' in number.");
	}
	else
	{
		NSLog(@"'pMyNumber' is bigger than 'piNumber' in number.");
	}
}