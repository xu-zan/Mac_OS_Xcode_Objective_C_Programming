/*********************************************************************************************
 * File name    : Foo.m
 * Description  : The implementation to class Foo
 * Creator      : XU ZAN
 * Creation date: Sun.  Oct. 20, 2013
 * Copyright(C)     2013    All rights reserved.
 *
 *********************************************************************************************/

#import "Foo.h"

@implementation Foo

@synthesize someVariable;
@synthesize someOtherVariable;

-(id)init
{
    if ((self = [super init]) != Nil)
    {
        /*
         * Initialize all the member variables here for current class
         */
        someArray= [[NSMutableArray alloc] init];
    }
    return self;
}

-(id)initWithArrary:(NSMutableArray *)inArray
{
    if ((self = [self init]))
    {
        // someArray = [inArray retain];
    }
    return self;
}

-(void)dealloc
{
    someVariable = Nil;
    someOtherVariable = nil;
    someArray = nil;
}

-(void)someMethod
{
    // Insert your code here...
    return;
}

-(BOOL)someOtherMethodWithArg:(NSString *)param1 andAnotherArg:(int)param2
{
    // Insert your code here...
    int iResult = 0;
#if 0
    if ([someOtherObject doSomething:param1] == param2)
    {
        iResult = YES;
    }
    else
    {
        iResult = NO;
    }
#endif
    return iResult;
}

+(id)fooWithArray:(NSMutableArray *)inArray
{
    return [[[self alloc] initWithArray:inArray] autorelease];
}

@end