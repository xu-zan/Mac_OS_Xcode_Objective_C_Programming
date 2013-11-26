/**********************************************************************************************************
 * File name    : Employee.m
 * Description  : The implementation to class Employee.
 * Creator      : XU ZAN
 * Creation date: Thur.     Oct. 31, 2013
 * Copyright(C)     2013    All rights reserved.
 *
 **********************************************************************************************************/

#import <Foundation/Foundation.h>
#import "Employee.h"

@implementation Employee


@synthesize firstName;
@synthesize lastName;
@synthesize birthDate;
@synthesize dateOfEmployment;
@synthesize manager;
@synthesize ssn;
@synthesize salary;
@dynamic age;


-(void)dealloc
{
    [self setFirstName:nil];
    [self setLastName:nil];
    [self setBirthDate:nil];
    [self setDateOfEmployment:nil];
    [self setSsn:nil];
    [self setManager:nil];
    
    // [super dealloc];
}


-(id)init
{
    if (self = [super init])
    {
    
    }
    return self;
}


-(NSTimeInterval)age
{
    return [birthDate timeIntervalSinceNow];
}

-(id)initWithFirstName:(NSString *)inFirstName
              lastName:(NSString *)inLastName
             birthDate:(NSDate *)inBirthDate
                   ssn:(NSString *)inSsn
{
    if (self = [self init])
    {
        [self setFirstName:inFirstName];
        [self setLastName:inLastName];
        [self setBirthDate:inBirthDate];
        [self setSsn:inSsn];
    }
    return self;
}

-(void)giveRaise:(double)percentage
{
    salary = salary * (1 + percentage);
}

-(double)bonus
{
    return salary*0.05;
}

@end





