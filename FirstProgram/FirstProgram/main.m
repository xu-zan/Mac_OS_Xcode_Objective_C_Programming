//
//  main.m
//  FirstProgram
//
//  Created by 徐 贊 on 13-11-9.
//  Copyright (c) 2013年 徐 贊. All rights reserved.
//

#import <Foundation/Foundation.h>

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
    }
    /*
     [pool drain];
     *
     * 把池子中的對象所占用的內存釋放
     */
    return 0;   // 在習慣上， 0表示運行成功
}

