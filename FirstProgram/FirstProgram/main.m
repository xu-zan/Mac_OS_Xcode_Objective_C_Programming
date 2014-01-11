/****************************************************************************************************************
 * Project      : FirstProgram.xcodeproj
 * Description  : This is my first Xcode project on Mac OS X platform, try to learn the Objective-C programming
 *                language and code it.
 * ==============================================================================================================
 * File name    : main.m
 * Description  : This file implements the main() entry function of current project.
 * Creator      : XU ZAN
 * Creation date: Wed.  Dec. 18, 2013
 * Copyright(C)     2013    All rights reserved.
 *
 ****************************************************************************************************************/


#import <Foundation/Foundation.h>

#import "IdTest.h"
#import "Member.h"


int main(int argc, const char * argv[])
{
    /*
     NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
     *
     * 創建一個系統自動釋放池。这个池的作用是管理對象的內存釋放。創建一個對象就會
     * 申請一些內存，而釋放一些對象就會釋放這些內存。 除了自己管理內存釋放外，
     * 還可以使用系統自動釋放池來管理內存釋放
     */
    
    @autoreleasepool {
        NSLog(@"Hello, World!");    /* NSLog是一個Objective-C庫函數，是一個輸出方法。
                                     * 其作用是打印後面字符串的內容到控制台上，類似於C語言中的printf
                                     * @"Hello, World!"是一個字符串，與C或Java不同，Objective-C字符串需要在""之前使用@
                                     */
        
#if 0
        Member *member = [[Member alloc] init];
        /************************************************************************************************
         
         在Objective-C中, 方法調用的語法格式 :
         
         變量 ＝ [實例 方法];
         
         或者
         
         實例 = [類 方法];
         
         完整的方法調用格式爲：
         
         [實例 方法名1:參數1 方法名2:參數2, 方法名3:參數3]
         
         ************************************************************************************************/
        [member setName:@"Sam"];
        [member setAge:36];
        
        NSLog(@"%@", [member name]);    // "%@" 表示字符串, "%i" 表示整數
        NSLog(@"%i", [member age]);
        
        int n = 0;
        NSLog(@"Please enter the integer number : \ni = ");
        scanf("%i", &n);
        NSLog(@"n = %i", n);
#endif
        
        IdTest();
        
        Prime();
    }
    /*
     [pool drain];
     *
     * 把池子中的對象所占用的內存釋放
     */
    return 0;   // 在習慣上， 0表示運行成功
}

