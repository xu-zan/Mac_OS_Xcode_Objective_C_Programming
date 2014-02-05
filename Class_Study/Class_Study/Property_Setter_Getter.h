/*****************************************************************************************************
 * File name        : Property_Setter_Getter.h
 * Description      : 研究與測試 @property  @synthesize 屬性的用法
 * Creator          : XU ZAN
 * Creation date    : Wed.  Feb. 05, 2014
 * Copyright(C)     2014    All rights reserved.
 *
 *****************************************************************************************************/


#ifndef PROPERTY_SETTER_GETTER_H
#define PROPERTY_SETTER_GETTER_H

#import <Foundation/Foundation.h>

@interface Property_Setter_Getter : NSObject
{
    int iMemberX;
    int iMemberY;
}
@property int iMemberX, iMemberY;

-(void) Print;

@end


#endif  /*  PROPERTY_SETTER_GETTER_H  */