//
//  RootInfoPanelView.m
//  old.helloworld
//
//  Created by sang alfred on 4/22/13.
//  Copyright (c) 2013 sang alfred. All rights reserved.
//

#import "RootBtnPanelView.h"

@interface RootBtnPanelView()
- (void)click_hello_button_callback:(UIButton *)sender;
- (void)click_world_button_callback:(UIButton *)sender;

@end

@implementation RootBtnPanelView
@synthesize delegate;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor orangeColor];
        
        UIButton * helloBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        helloBtn.frame = CGRectMake(10, 15, 130, 70);
        [helloBtn setTitle:@"hello button" forState:UIControlStateNormal];
        [helloBtn addTarget:self action:@selector(click_hello_button_callback:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:helloBtn];
        
        UIButton * worldBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        worldBtn.frame = CGRectMake(10, 95, 130, 70);
        [worldBtn setTitle:@"world button" forState:UIControlStateNormal];
        [worldBtn addTarget:self action:@selector(click_world_button_callback:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:worldBtn];
        
        
        UIButton * tbBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        tbBtn.frame = CGRectMake(160, 15, 130, 150);
        [tbBtn setTitle:@"看tablecell例子去" forState:UIControlStateNormal];
        [tbBtn addTarget:self action:@selector(click_tb_button_callback:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:tbBtn];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

#pragma mark - Private Methods Implemetions

- (void)click_hello_button_callback:(UIButton *)sender
{
    if ([delegate respondsToSelector:@selector(hello_call_back)]) {
        [delegate hello_call_back];
    }
    
    NSLog(@"click_hello_button_callback done!");
}

- (void)click_world_button_callback:(UIButton *)sender
{
    if ([delegate respondsToSelector:@selector(world_call_back)]) {
        [delegate world_call_back];
    }
    
    NSLog(@"click_world_button_callback done!");
}

- (void)click_tb_button_callback:(UIButton *)sender
{
    if ([delegate respondsToSelector:@selector(tb_call_back)]) {
        [delegate tb_call_back];
    }
    
    NSLog(@"click_tb_button_callback done!");
}


@end
