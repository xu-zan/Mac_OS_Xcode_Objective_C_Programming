/**********************************************************************************************
 * File name    : Student.h
 * Description  : Define a class named 'Student'.
 * Creator      : XU ZAN
 * Creation date: Wed.  Dec. 18, 2013
 * Copyright(C)     2013    All rights reserved.
 *
 **********************************************************************************************/

#ifndef STUDENT_H
#define STUDENT_H

#import <Foundation/Foundation.h>


@interface Student : NSObject
{
    int sid;
    NSString *name;
}

@property int sid;
@property (nonatomic, retain) NSString *name;

-(void) print;
-(void) setSid : (int) sid1 andName : (NSString*) name1;

@end

#endif  /*  STUDENT_H  */