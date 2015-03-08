/**************************************************************************************************
 * File name		: Button_FunTests.m
 * Description		: Design the unit test case to validate/test the "Button Fun" app.
 * Creator			: XU ZAN
 * Creation date	: Thur.	Feb. 05, 2015
 * Copyright(C)		2015	All rights reserved.
 *
 **************************************************************************************************/


#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

@interface Button_FunTests : XCTestCase

@end



@implementation Button_FunTests

	- (void)setUp
	{
		[super setUp];
		// Put setup code here. This method is called before the invocation of each test method in the class.
	}

	- (void)tearDown
	{
		// Put teardown code here. This method is called after the invocation of each test method in the class.
		[super tearDown];
	}

	- (void)testExample
	{
		// This is an example of a functional test case.
		XCTAssert(YES, @"Pass");
	}

	- (void)testPerformanceExample
	{
		// This is an example of a performance test case.
		[self measureBlock:^
		{
			// Put the code you want to measure the time of here.
		}
		];
	}

@end
