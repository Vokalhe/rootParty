//
//  EVALoginViewController.m
//  PartyMaker
//
//  Created by Admin on 16.02.16.
//  Copyright © 2016 1. All rights reserved.
//

#import "EVALoginViewController.h"

@interface EVALoginViewController ()

@end

@implementation EVALoginViewController

//- (void)viewDidLoad {
//    [super viewDidLoad];
//    // Do any additional setup after loading the view.
//}
//
//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)viewWillAppear:(BOOL)animated {
    [self.substrateForLoginView.layer setBorderWidth:2.f];
    [self.substrateForLoginView.layer setBorderColor:[UIColor whiteColor].CGColor];
    
    [self.loginTextField setFont:[UIFont fontWithName:@"MariadPro-Regular" size:16]];
    [self.passwordTextField setFont:[UIFont fontWithName:@"MariadPro-Regular" size:16]];
    NSDictionary *attributedDictionary = @{ NSForegroundColorAttributeName: [UIColor colorWithRed:76/255. green:82/255. blue:92/255. alpha:1]};
    NSAttributedString *attributedForLogin = [[NSAttributedString alloc] initWithString:@"Login"
                                                                             attributes:attributedDictionary];
    NSAttributedString *attributedForPassword = [[NSAttributedString alloc] initWithString:@"Password"
                                                                                attributes:attributedDictionary];
    [self.loginTextField setAttributedPlaceholder:attributedForLogin];
    [self.passwordTextField setAttributedPlaceholder:attributedForPassword];
}

#pragma mark - Action

- (IBAction)actionClickRegister:(UIButton *)sender {
    
}

- (IBAction)actionClickSingIn:(UIButton *)sender {
    
}

#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
        if(!self.isKeyBoardShowed) {
        CGSize contentWithKeyboard = self.loginScrollView.contentSize;
        contentWithKeyboard.height +=30;
        self.loginScrollView.contentSize = contentWithKeyboard;
        CGPoint contentOffset = CGPointMake(0,30);
        [self.loginScrollView setContentOffset:contentOffset animated:YES];
        self.isKeyBoardShowed = YES;
    }
    return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    if([textField isEqual:self.loginTextField]) {
        [self.passwordTextField becomeFirstResponder];
    } else {
        if(self.isKeyBoardShowed) {
            CGSize contentWithKeyboard = self.loginScrollView.contentSize;
            contentWithKeyboard.height -=30;
            self.loginScrollView.contentSize = contentWithKeyboard;
            CGPoint contentOffset = CGPointMake(0,0);
            [self.loginScrollView setContentOffset:contentOffset animated:YES];
            self.isKeyBoardShowed = NO;
        }
        
        [textField resignFirstResponder];
    }
    return YES;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
