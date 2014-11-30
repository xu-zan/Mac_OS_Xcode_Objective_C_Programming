/**************************************************************************
 * File name		: Student.m
 * Description		: Implement an interface of "Student".
 * Creator			: XU ZAN
 * Creation date	: Sun.	Nov. 30, 2014
 * Copyright(C)		2014	All rights reserved.
 *
 **************************************************************************/


#import "Student.h"

@implementation Student

	@synthesize name, age;

	-(void) Print
	{
		NSLog(@"name is %@, age is %i.", name, age);
	}

	-(NSComparisonResult) compareName:(id)element
	{
		return [name compare:[element name]];
	}

@end