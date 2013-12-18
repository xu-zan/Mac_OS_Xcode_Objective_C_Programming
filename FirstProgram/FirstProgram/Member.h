/************************************************************************************************
 * File name    : Member.h
 * Description  : 一個簡單的類， 接口文件
 * Creator      : XU ZAN
 * Creation date: Wed.  Nov. 13, 2013
 * Copyright(C)     2013    All rights reserved.
 *
 ************************************************************************************************/

#import <Foundation/Foundation.h>

/************************************************************************************************
 
 在Objective-C中，定义一个类的接口(interface)的语法格式：
 
 @interface 类名:父类名
 {
    变量定义;
 }
 
 方法定义；
 -(返回类型) 方法名称:(参数类型) 参数名称;
 
 -    实例方法
 +    类方法
 
 @end
 
 ************************************************************************************************/


@interface Member : NSObject
{
    NSString *name;
    int age;
}

@property int age;
@property (nonatomic, retain) NSString *name;

-(NSString *) name;

-(void) print;
-(void) setName : (NSString*) name1 andAge : (int) age1;

@end