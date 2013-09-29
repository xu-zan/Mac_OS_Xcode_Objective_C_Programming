/**********************************************************************************************
 * Project      : Calculator
 * Description  : 创建一个完整的Objective-C console程序
 *=============================================================================================
 * File name    : main.m
 * Description  : 项目的主程序入口 main()函数
 * Creator      : XU ZAN
 * Creation date: Tue.  Sep. 24, 2013
 * Copyright(C)     2013    All rights reserved.
 *
 **********************************************************************************************/

#import <Foundation/Foundation.h>
#import "Calculator.h"
#import "MathOperations.h"

int main(int argc, const char *argv[])
{
    // NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    double dResult = 0.00f;
    char operator = '\0';
    
    NSString *equation = [NSString stringWithUTF8String:argv[1]];
    NSArray *eqParts = [equation componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    
    for (int n=0; n<[eqParts count]; n++)
    {
        NSString *argString = [eqParts objectAtIndex:n];
        char firstChar = [argString characterAtIndex:0];
        
        if (isAnOperator(firstChar))
        {
            operator = firstChar;
            continue;
        }
        
        double dNewValue = [argString doubleValue];
        switch (operator)
        {
            case '+':
                dResult = add(dResult, dNewValue);
                break;
                
            case '-':
                dResult = substract(dResult, dNewValue);
                break;
                
            case '*':
                dResult = multiply(dResult, dNewValue);
                break;
                
            case '/':
                dResult = divide(dResult, dNewValue);
                break;
                
            default:
                dResult = add(dResult, dNewValue);
                break;
        }
    }
    
    NSLog(@"%.3f", dResult);
    // [pool drain];
/*************************************/
    return 0;
}

/*
 * END OF FILE <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
 */
