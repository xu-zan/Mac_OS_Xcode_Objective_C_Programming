/**************************************************************************************************
 * File name		: ViewController.h
 * Description		: Define the class "ViewController", to construct the UI view elements and
 *					  their corresponding action methods.
 * Creator			: XU ZAN
 * Creation date	: Wed.	Feb. 04, 2015
 * Copyright(C)		2015	All rights reserved.
 *
 **************************************************************************************************/


#ifndef VIEW_CONTROLLER_H
#define VIEW_CONTROLLER_H

	#import <UIKit/UIKit.h>

	@interface ViewController : UIViewController

		@property (weak, nonatomic) IBOutlet UILabel *statusLabel;

		- (IBAction)buttonPressed:(UIButton *)sender;

	@end

#endif	/*  VIEW_CONTROLLER_H  */