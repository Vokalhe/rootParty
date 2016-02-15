//
//  EVALoginViewController.h
//  PartyMaker
//
//  Created by Admin on 16.02.16.
//  Copyright © 2016 1. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EVALoginViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *loginTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UIView *substrateForLoginView;
@property (weak, nonatomic) IBOutlet UIScrollView *loginScrollView;
@property (nonatomic) BOOL isKeyBoardShowed;
- (IBAction)actionClickRegister:(UIButton *)sender;
- (IBAction)actionClickSingIn:(UIButton *)sender;
@end
