/*************************************************************************************
 * File name		: Array_Objects_Sorting.m
 * Description		: 研究實現數組內的對象排序問題
 * Creator			: XU ZAN
 * Creation date	: Sun.	Nov. 30, 2014
 * Copyright(C)		2014	All rights reserved.
 *
 *************************************************************************************/


#import "Array_Objects_Sorting.h"
#import "Student.h"


void TestCase_ArrayObjectsSorting(void)
{
	Student_Name_Sorting();
}

void Student_Name_Sorting(void)
{
	Student *stu1 = [[Student alloc] init],
			*stu2 = [[Student alloc] init],
			*stu3 = [[Student alloc] init];
	
	/* Assign the name and age variables for each student.
	 */
	[stu1 setName:@"Sam"];
	[stu1 setAge:30];
	[stu2 setName:@"Lee"];
	[stu2 setAge:23];
	[stu3 setName:@"Alex"];
	[stu3 setAge:26];
	
	/* Create a mutable array to contain the 3 student objects.
	 */
	NSMutableArray *students = [[NSMutableArray alloc] init];
	[students addObject:stu1];
	[students addObject:stu2];
	[students addObject:stu3];
	
	NSLog(@"排序前");
	
	for (int i=0; i<[students count]; i++)
	{
		Student *stu4 = [students objectAtIndex:i];
		NSLog(@"Name = %@, Age = %i", [stu4 name], [stu4 age]);
	}
	
	/* Execute the sorting.
	 */
	[students sortedArrayUsingSelector:@selector(compareName:)];
	
	NSLog(@"排序後");
	
	for (Student *stu4 in students)
	{
		NSLog(@"Name = %@,  Age = %i", stu4.name, stu4.age);
	}
	
	return;
}




/*
 * END OF FILE <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
 */