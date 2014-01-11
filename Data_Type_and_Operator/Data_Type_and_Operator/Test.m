/***********************************************************************************************
 * File name        : Test.m
 * Description      : To edit the test case and carry out the test instance.
 * Creator          : XU ZAN
 * Creation date    : Wed.  Dec. 25, 2013
 * Copyright(C)     2013    All rights reserved.
 *
 ***********************************************************************************************/

#import "Test.h"
#import "Selector.h"

void Test_Selector_SEL_Type(void)
{
    SEL sel = @selector(print);     // 指向一個名叫print的方法函數指針
    
    ClassA *pA = [[ClassA alloc] init];
    [pA performSelector:sel withObject:nil];    // 調用選擇器制定的方法
}

void Test_Class_Name(void)
{
    ClassA *pMy_ClassA_Obj = [[ClassA alloc] init];
    
    Class theObject = [ClassA class];
    NSLog(@"%@", [theObject className]);
}

void Test_Difference_Nil_nil(void)
{
    ClassA *pInstanceOfClassA = [[ClassA alloc] init];
    
    pInstanceOfClassA = nil;
    if (pInstanceOfClassA == nil)
    {
        NSLog(@"pInstanceOfClassA is nil");
    }
}

void Test_Bit_Calculation(void)
{
    unsigned short w1 = 0x000F, w2 = 0x0000;
    
    NSLog(@"w1 & w2 = 0x%04X", w1 & w2);
    NSLog(@"w1 | w2 = 0x%04X", w2 | w2);
    NSLog(@"w1 ^ w2 = 0x%04X", w1 ^ w2);
    NSLog(@"~w1 = 0x%04X", ~w1);
}


void Narcissus_Number(void)
{
    int i = 0, j = 0, k = 0, n = 0;
    
    NSLog(@"The below numbers are the Narcissus number :");
    for (n=100; n<1000; n++)
    {
        i = n / 100;    // 百位數
        j = (n/10)%10;  // 十位數
        k = n % 10;     // 個位數
        
        if ( (i*100 + j*10 + k) == (i*i*i + j*j*j + k*k*k) )
        {
            NSLog(@"%i", n);
        }
    }
}

/*
 * END OF FILE <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
 */