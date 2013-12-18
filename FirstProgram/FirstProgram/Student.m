/**********************************************************************************************
 * File name    : Student.m
 * Description  : Implement the method functions of the 'Student' class.
 * Creator      : XU ZAN
 * Creation date: Wed.  Dec. 18, 2013
 * Copyright(C)     2013    All rights reserved.
 *
 **********************************************************************************************/


#import "Student.h"


@implementation Student

@synthesize sid, name;

-(void) print
{
    NSLog(@"My student ID is : %i, my name is : %@", sid, name);
}

-(void) setSid : (int) sid1 andName : (NSString*) name1
{
    self.sid = sid1;
    self.name = name1;
}

@end