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
#elif 0
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
#elif 0
    #import <math.h>
    /*-----------------------------------------------------------------------------------
     * 測試Objective-C programming language的標量數據類型及其占用內存的大小
     */
    int main(int argc, char *argv[])
    {
        /* Objective-C常用的標量數據類型 ：
         * int              unsigned int                float               double
         * long             long long                   char                BOOL
         * NSInteger        NSUInteger
         */
        
        int iSize = 0;
        int iFoo = 10;
        double dBar = 500.00;
        float fBaz = -12.2456;
        long ulCnt = 520;
        NSInteger nsiVariable = 123456;
        char cTest = 'T';
        
        iSize = sizeof(iFoo);
        NSLog(@"Size of 'int' : %d", iSize);
        iFoo = 0x7FFFFFFF;
        NSLog(@"int type : max value =  %d", iFoo);
        iFoo = ~0x7FFFFFFF;
        NSLog(@"int type : min value = %d", iFoo);
        
        iSize = sizeof(dBar);
        NSLog(@"Size of 'double' : %d", iSize);
        
        iSize = sizeof(fBaz);
        NSLog(@"Size of 'float' : %d", iSize);
        // fBaz = powf(2.00, 4.00*8.00/2.00);
        // NSLog(@"float type : max value : %f", fBaz);
        
        iSize = sizeof(ulCnt);
        NSLog(@"Size of 'long' : %d", iSize);
        ulCnt = 0x7FFFFFFFFFFFFFFF;
        NSLog(@"long type : max value =  %ld", ulCnt);
        ulCnt = ~0x7FFFFFFFFFFFFFFF;
        NSLog(@"long type : min value = %ld", ulCnt);
        
        iSize = sizeof(nsiVariable);
        NSLog(@"Size of 'NSInteger' : %d", iSize);
        /********************************************/
        nsiVariable = 0x7FFFFFFFFFFFFFFF;
        NSLog(@"NSInteger type : max value =  %ld", nsiVariable);
        nsiVariable = ~0x7FFFFFFFFFFFFFFF;
        NSLog(@"NSInteger type : min value = %ld", nsiVariable);
        
        iSize = sizeof(cTest);
        NSLog(@"Size of 'char' : %d", iSize);
        /********************************************/
        cTest = 0x7F;
        NSLog(@"char type : max value =  %d", cTest);
        cTest = ~0X7F;
        NSLog(@"char type : min value = %d", cTest);
        
        return 0;
    }
#else
    #import <Foundation/Foundation.h>

    int main(int argc, char *argv[])
    {
        NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
        
        NSString *foo = [NSString stringWithString:@"Foobar"];
        
        NSLog(@"foo = %@", foo);
        
        [pool drain];
        return 0;
    }
#endif

/*
 * END OF FILE <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
 */