/************************************************************************************************
 * File name    : Member.m
 * Description  : 一個簡單的類， 實現文件
 * Creator      : XU ZAN
 * Creation date: Wed.  Nov. 13, 2013
 * Copyright(C)     2013    All rights reserved.
 *
 ************************************************************************************************/

#import "Member.h"

/************************************************************************************************
 
 在Objective-C中，類的實現(implementation)的语法格式：
 
 @implementation 類名
 
    方法實現代碼;
 
 @end
 
 ************************************************************************************************/

@implementation Member

@synthesize age;
@synthesize name;

-(NSString *) name
{
    return name;
}


-(void) print
{
    NSLog(@"My name is : %@, my age is : %i", name, age);
}

-(void) setName : (NSString*) name1 andAge : (int) age1
{
    self.age = age1;
    self.name = name1;
}

@end