/**************************************************************************
 * File name		: Student.h
 * Description		: Define an interface of "Student".
 * Creator			: XU ZAN
 * Creation date	: Sun.	Nov. 30, 2014
 * Copyright(C)		2014	All rights reserved.
 *
 **************************************************************************/


#ifndef STUDENT_H
#define STUDENT_H

	#import <Foundation/Foundation.h>

	@interface Student : NSObject
	{
		NSString *name;
		int age;
	}
		@property (copy, nonatomic) NSString *name;
		@property int age;

		-(void) Print;
		-(NSComparisonResult) compareName:(id) element;

	@end

#endif	/*  STUDENT_H  */