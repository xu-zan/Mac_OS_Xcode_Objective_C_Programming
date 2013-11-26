/**********************************************************************************************************
 * File name    : Employee.h
 * Description  : The interface to class Employee.
 * Creator      : XU ZAN
 * Creation date: Thur.     Oct. 31, 2013
 * Copyright(C)     2013    All rights reserved.
 *
 **********************************************************************************************************/

#ifndef EMPLOYEE_H
#define EMPLOYEE_H

    #import <Cocoa/Cocoa.h>

    @interface Employee : NSObject
    {
        NSString *firstName;
        NSString *lastName;
        NSDate *birthDate;
        NSDate *dateOfEmployment;
        NSTimeInterval age;
        Employee *manager;
        
        NSString *ssn;
        double salary;
    }
    @property (nonatomic, retain) NSString *firstName;
    @property (nonatomic, retain) NSString *lastName;
    @property (nonatomic, retain) NSDate *birthDate;
    @property (nonatomic, retain) NSDate *dateOfEmployment;
    @property (nonatomic, unsafe_unretained) Employee *manager;
    @property (nonatomic, retain) NSString *ssn;
    @property (nonatomic, readonly) NSTimeInterval age;
    @property (nonatomic) double salary;

    -(id)initWithFirstName:(NSString *)inFirstName
                  lastName:(NSString *)inLastName
                 birthDate:(NSDate *)inBirthDate
                       ssn:(NSString *)inSsn;


    -(void)giveRaise:(double)percentage;
    -(double)bonus;

    @end

#endif  /*  EMPLOYEE_H  */