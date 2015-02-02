//
//  ViewController.m
//  Matchismo
//
//  Created by Valerie Cayo on 1/31/15.
//  Copyright (c) 2015 Valerie Cayo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)touchCardButton:(UIButton *)sender {
    [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                      forState:UIControlStateNormal];
    [sender setTitle:@"" forState:UIControlStateNormal];
}

@end
