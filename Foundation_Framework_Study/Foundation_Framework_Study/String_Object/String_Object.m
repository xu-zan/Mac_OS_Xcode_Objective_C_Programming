/*************************************************************************************
 * File name		: String_Object.m
 * Description		: Learn and study the NSString type of objects.
 * Creator			: XU ZAN
 * Creation date	: Sun.	Nov. 9, 2014
 * Copyright(C)		2014	All rights reserved.
 *
 *************************************************************************************/


#import "String_Object.h"

#import <Foundation/NSString.h>
#import <objc/objc.h>

void String_Type_Object_Example(void)
{
	NSString *sBeijingStr = @"北京歡迎您！";
	NSLog(@"%@", sBeijingStr);
	
	NSString *Str = NULL;
	Str = [NSString stringWithString:sBeijingStr];
	NSLog(@"%@", Str);
	
	NSString *name = @"Xu Zan";
	NSString *age  = @"35";
	NSString *log = [NSString stringWithFormat:@"I am '%@'.", name];
	NSLog(@"%@", log);
	
	/* 在字符串之后附加一个新字符串， 相当于 strcat()
	 */
	NSString *sBeijing = @"Beijing";
	NSString *sWelcome = [sBeijing stringByAppendingString:@" welcome you."];
	NSLog(@"%@", sWelcome);
	
	/* 字符串的比较和判断
	 * 
	 * -(BOOL) isEqualToString:(NSString *) string;		// 比较两个字符串是否相同
	 * -(BOOL) hasPrefix:(NSString *) string;			// 开头字符的判断
	 * -(int) intValue;				// 转化为整数
	 * -(double) doubleValue;		// 转化为double数值
	 */
	if ([name hasPrefix:@"Xu"])
	{
		NSLog(@"The string '%@' has the prefix 'Xu'.", name);
	}
	if ([age intValue] > 36)
	{
		NSLog(@"The real age '%@' is bigger than 36.", age);
	}
	else
	{
		NSLog(@"The real age '%@' is smaller than 36.", age);
	}
}

void String_Usage(void)
{
	NSString *Str1 = @"Welcome, Sam.";
	NSString *Str2, *Str3;
	NSMutableString *mstr;
	NSRange range;
	
	mstr = [NSMutableString stringWithString:Str1];
	NSLog(@"%@", mstr);
	
	[mstr insertString:@" back" atIndex:7];
	NSLog(@"%@", mstr);
	
	[mstr insertString:@"How are you" atIndex:[mstr length]];		// equal to // mstr->insertString("How are you", mstr->length());
	NSLog(@"%@", mstr);
	
	[mstr appendString:@" in New York?"];
	NSLog(@"%@", mstr);
	
	[mstr deleteCharactersInRange:NSMakeRange(29, 12)];
	NSLog(@"%@", mstr);
	
	range = [mstr rangeOfString:@"How are you?"];
	if (range.location != NSNotFound)
	{
		[mstr deleteCharactersInRange:range];
		NSLog(@"%@", mstr);
	}
/************************************************************************************************/
	
	[mstr setString:@"Welcome, Sam."];
	NSLog(@"%@", mstr);
	
	[mstr replaceCharactersInRange:NSMakeRange(9, 3) withString:@"Alex"];
	NSLog(@"%@", mstr);
	
	Str2 = @"Welcome";
	Str3 = @"Hello";
	range = [mstr rangeOfString:Str2];
	if (range.location != NSNotFound)
	{
		[mstr replaceCharactersInRange:range withString:Str3];
		NSLog(@"%@", mstr);
	}
/************************************************************************************************/
	Str2 = @"l";
	Str3 = @"L";
	range = [mstr rangeOfString:Str2];
	while (range.location != NSNotFound)
	{
		[mstr replaceCharactersInRange:range withString:Str3];
		range = [mstr rangeOfString:Str2];
	}
	NSLog(@"%@", mstr);
/************************************************************************************************/
	Str2 = @"L";
	Str3 = @"l";
	[mstr replaceOccurrencesOfString:Str2
						  withString:Str3
						     options:nil
							   range:NSMakeRange(0, [mstr length])];
	NSLog(@"%@", mstr);
}













/******************************************************************************************/
void TestCase_StringTypeOfObject(void)
{
	String_Type_Object_Example();
	
	String_Usage();
}