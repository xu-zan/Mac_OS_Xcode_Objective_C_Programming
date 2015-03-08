/**************************************************************************************************
 * File name		: ViewController.m
 * Description		: Implement the class "ViewController", mainly implement all action methods.
 * Creator			: XU ZAN
 * Creation date	: Wed.	Feb. 04, 2015
 * Copyright(C)		2015	All rights reserved.
 *
 **************************************************************************************************/

#import "ViewController.h"

@interface ViewController ()

@end


/*===============================================================================================*/

@implementation ViewController

	- (void)viewDidLoad
	{
		[super viewDidLoad];
		// Do any additional setup after loading the view, typically from a nib.
	}

	- (void)didReceiveMemoryWarning
	{
		[super didReceiveMemoryWarning];
		// Dispose of any resources that can be recreated.
	}

	- (IBAction)buttonPressed:(UIButton *)sender
	{
	#if 0
		NSString *title = [sender titleForState:UIControlStateNormal];
		NSString *plainText = [NSString stringWithFormat:@"%@ button pressed", title];
		_statusLabel.text = plainText;
	#else
		NSString *title = [sender titleForState:UIControlStateNormal];
		NSString *plainText = [NSString stringWithFormat:@"%@ button pressed.", title];
		NSMutableAttributedString *styledText = [[NSMutableAttributedString alloc] initWithString:plainText attributes:nil];
		
		NSDictionary *attributes = @{ NSFontAttributeName : [UIFont boldSystemFontOfSize:_statusLabel.font.pointSize] };
		NSRange nameRange = [plainText rangeOfString:title];
		
		[styledText setAttributes:attributes range:nameRange];
		_statusLabel.attributedText = styledText;
	#endif
	}

@end
