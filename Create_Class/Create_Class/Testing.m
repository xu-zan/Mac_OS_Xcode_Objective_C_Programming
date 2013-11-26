/********************************************************************************************
 * File name    : Testing.m
 * Description  : 測試類， 對象的創建與使用
 * Creator      : XU ZAN
 * Creation date: Wed.  Oct. 23, 2013
 * Copyright(C)     2013    All rights reserved.
 *
 ********************************************************************************************/

#import "Testing.h"
#import "Foo.h"

void Testing_class_object_method(void)
{
    Foo *pMyObject = [[Foo alloc] init];
    
    [pMyObject doSomethingWithParamter:arg];
    
}