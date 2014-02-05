/**************************************************************************************************************
 * File name        : ClassTest.m
 * Description      : 測試Objective-C programming中類的創建與實現，及調用。
 * Creator          : XU ZAN
 * Creation date    : Sun.  Jan. 19, 2014
 * Copyright(C)     2014    All rights reserved.
 *
 **************************************************************************************************************/


#import "ClassTest.h"
#import "Test.h"
#import "Test2.h"

void General_Test_Case(void)
{
    Test_Class();
    Test_Class_InitializationMethod();
    Test_Class_StaticVariable();
    Test_Print_Auto_Const_Volatile_Variable_Types();
}

void Test_Class(void)
{
    Test *pTestObj = [[Test alloc] init];
    
    [pTestObj SetCoordinateX:1];
    [pTestObj SetCoordinateY:5];
    
    [pTestObj print];
}

void Test_Class_InitializationMethod(void)
{
    Test2 *pTest2Obj = [[Test2 alloc]initWith:21];
    [pTest2Obj print];
}

/**************************************************************************************
 * 類的方法 和 對象的方法
 *
 * "-" 方法名之前加 "-" 符號的表示是對象的方法
 * "+" 方法名之前加 "+" 符號的表示是類的方法
 *
 * ”類的方法“ 和 ”對象的方法“ 的使用差異 ：
 *
 * “類的方法”在調用時是不需要創建一個對象就能直接調用， 注意如下函數 Test_Class_StaticVariable 的 [Test StaticIntY]
 * 
 * "對象的方法"在調用時則需要先創建一個對象起來後，才能調用。 注意上面函數 Test_Class 的對象pTestObj去呼叫方法SetCoordinateX
 *      Test *pTestObj = [[Test alloc] init];
 *      [pTestObj SetCoordinateX:1];
 **************************************************************************************/

void Test_Class_StaticVariable(void)
{
    NSLog(@"Current static variable Y = %i", [Test StaticIntY]);
    NSLog(@"Once again, current static variable Y = %i", [Test StaticIntY]);
}

void Test_Print_Auto_Const_Volatile_Variable_Types(void)
{
    Test *pTestObj = [[Test alloc] init];
    [pTestObj Print_Auto_Const_Volatile_Variable_Types];
}

/*
 * END OF FILE <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
 */