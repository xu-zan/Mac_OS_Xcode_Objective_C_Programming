/*******************************************************************************************
 * Project      : Study
 * Description  : 學習研究 Objective-C編程，該項目只是一個用來學習研究用的示例程序。
 * -----------------------------------------------------------------------------------------
 * File name    : main.m
 * Description  : This file implements the main() entry function.
 * Creator      : XU ZAN   
 * Creation date: Thur. Aug. 22, 2013
 * Copyright(C)     2013    All rights reserved.
 *
 *******************************************************************************************/


#import <Foundation/Foundation.h>

/*=====================================================
 * Functions prototype :
 */
long int calculateFactorial(int iValue);
void myFunction(int a, int *b);


/*=====================================================
 * main() entry function :
 */
#if 0
    int main(int argc, char *argv[])
    {
        int a = 5;
    
        long int lResult = calculateFactorial(a);
    
        NSLog(@"5! = %ld", calculateFactorial(5));
        NSLog(@"10! = %ld", calculateFactorial(10));
        NSLog(@"15! = %ld", calculateFactorial(15));
        NSLog(@"20! = %ld", calculateFactorial(20));
    
        /*******************************/
        return 0;
    }
#else
    int main(int argc, char *argv[])
    {
        int a = 10;
        int b = 10;
        
        myFunction(a, &b);
        
        NSLog(@"a = %d", a);
        NSLog(@"b = %d", b);
    /******************************/
        return 0;
    }
#endif


/*=====================================================
 * Functions implementation :
 */
long int calculateFactorial(int iValue)
{
    long int iResult = 1;
    
    for (int i = 1; i <= iValue; i++)
    {
        iResult = iResult * i;
    }
    return iResult;
}

void myFunction(int a, int *b)
{
    a = 20;
    *b = 20;
    return;
}


/*
 * END OF FILE <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
 */