/*********************************************************************************************************
 * Project      : Example
 * Description  : This is an Example project programmed in Objective-C language. 
 *                It is just a demo program for studying / learning purpose.
 * --------------------------------------------------------------------------------------------------------
 * File name    : Example_Main.m
 * Description  : A simple example program, this file will implement the main() entry function.
 * Created by   : Xu Zan
 * Creation date: Wed.  Aug. 07, 2013
 * Copyright(C)     2013    All rights reserved.
 *
 **********************************************************************************************************/


#import <Foundation/Foundation.h>

#if 0
    int main(int argc, char *argv[])
    {
        int aVariable = 5555;
    
        NSLog(@"Hello from Objective-C");
    
        NSLog(@"The variable's value is %d", aVariable);
        return 0;
    }
#else
    int main(int argc, char *argv[])
    {
        #if 1
            /*===========================================================
             * 在栈上为变量分配内存
             */
            // 这是第一个栈桢
            int aVariable1 = 5;
            if (aVariable1 > 4)
            {
                // 这是第2个栈桢
                int aVariable2 = 10;
                NSLog(@"aVariable1 = %d", aVariable1);
                NSLog(@"aVariable2 = %d", aVariable2);
            }
        
            NSLog(@"aVariable1 : %d", aVariable1);
            // NSLog(@"aVariable2 : %s", aVariable2);   // 错误 aVariable2这时已经不存在了。
            return 0;
        #else
            /*===========================================================
             * 在堆上为变量分配内存
             *
             * 判斷一個變量的內存是分配在堆上還是棧上的一個關鍵方法：看它是不是一個指針
             */
            SomeClass *aVariable = [[SomeClass alloc] init];    // 分配内存
        
            [aVariable2 release];   // 释放内存
        #endif
    }
#endif