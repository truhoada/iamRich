//
//  ViewController.m
//  IAmRich trung
//
//  Created by trung hoang on 6/29/15.
//  Copyright (c) 2015 Hoang Trung. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *ruby;
@property (weak, nonatomic) IBOutlet UILabel *iamRich;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.iamRich.alpha = 0;
    self.ruby.alpha = 1;
    
    
}
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    self.iamRich.center = CGPointMake(-260,self.iamRich.center.y);
    self.ruby.center = CGPointMake(450, self.ruby.center.y);
    
    
    
    [UIView animateWithDuration:4 animations:^{
        self.ruby.alpha = 1;
        self.iamRich.alpha = 1;
        self.ruby.center = CGPointMake(160,self.ruby.center.y);
        self.iamRich.center = CGPointMake(160, self.iamRich.center.y);
        
        CGRect rubyBounds = self.ruby.bounds;
        rubyBounds.size.width += 100;
        rubyBounds.size.height += 100;
        [self.ruby setBounds:rubyBounds];
        
        
    } completion:^(BOOL finished){
        [UIView animateWithDuration:4 animations:^{
            self.ruby.center = CGPointMake(self.ruby.center.x, 250);
            self.iamRich.center = CGPointMake(self.iamRich.center.x,450);
            
            CGRect rubyBounds = self.ruby.bounds;
            rubyBounds.size.width += 100;
            rubyBounds.size.height += 100;
            [self.ruby setBounds:rubyBounds];
            
            [self.iamRich setAlpha:0];
            
        } completion:^(BOOL finished){
            [UIView animateWithDuration:4 animations:^{
                
//          self.ruby.contentMode = UIViewContentModeCenter;
                
            }];
        }];
    }];
    
    
}
@end
