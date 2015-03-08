/**************************************************************************************************
 * File name		: AppDelegate.H
 * Description		: Define the class "AppDelegate", specify the GUI window.
 * Creator			: XU ZAN
 * Creation date	: Wed.	Feb. 04, 2015
 * Copyright(C)		2015	All rights reserved.
 *
 **************************************************************************************************/

#ifndef APP_DELEGATE_H
#define APP_DELEGATE_H

	#import <UIKit/UIKit.h>

	#import "ViewController.h"
	

	@interface AppDelegate : UIResponder <UIApplicationDelegate>

		@property (strong, nonatomic) UIWindow *window;
		
		#if defined (LOAD_WINDOW_CUSTOMIZATION_SETTINGS)
			@property (strong, nonatomic) ViewController *myViewController;
		#endif

	@end

#endif	/*  APP_DELEGATE_H  */