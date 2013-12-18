/****************************************************************************************
 * File name    : IdTest.m
 * Description  : Test the id type of functions.
 * Creator      : XU ZAN
 * Creation date: Wed.  Dec. 18, 2013
 * Copyright(C)     2013    All rights reserved.
 *
 ****************************************************************************************/

#import "Student.h"
#import "Member.h"

void IdTest(void)
{
    Member *member1 = [[Member alloc] init];
    [member1 setName:@"XU ZAN" andAge:30];
    
    id data;
    data = member1;
    [data print];
    
    Student *student1 = [[Student alloc] init];
    [student1 setSid:12345 andName:@"James Bond"];
    data = student1;
    [data print];
    
/****************************************/
    return;
}