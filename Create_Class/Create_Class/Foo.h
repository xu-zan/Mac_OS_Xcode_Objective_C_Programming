/*********************************************************************************************
 * File name    : Foo.h
 * Description  : The interface to class Foo
 * Creator      : XU ZAN
 * Creation date: Sun.  Oct. 20, 2013
 * Copyright(C)     2013    All rights reserved.
 *
 *********************************************************************************************/

#import <Foundation/Foundation.h>

@interface Foo : NSObject
{
    NSString *someVariable;
    NSString *someOtherVariable;
    NSArray  *someArray;
}
@property (nonatomic, retain) NSString *someVariable;
@property (nonatomic, retain) NSString *someOtherVariable;

// 對象方法
-(id)init;
-(id)initWithArrary:(NSMutableArray *)inArray;
-(void)dealloc;

-(void)someMethod;
-(BOOL)someOtherMethodWithArg:(NSString *)param1 andAnotherArg:(int)param2;

// 類方法
+(id)fooWithArray:(NSMutableArray *)inArray;

@end