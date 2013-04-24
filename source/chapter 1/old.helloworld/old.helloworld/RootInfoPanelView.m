//
//  RootInfoPanelView.m
//  old.helloworld
//
//  Created by sang alfred on 4/22/13.
//  Copyright (c) 2013 sang alfred. All rights reserved.
//

#import "RootInfoPanelView.h"

@interface RootInfoPanelView()
{
    UITextView * __infoTextView;
}

@end

@implementation RootInfoPanelView
@synthesize delegate;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor orangeColor];
        
        __infoTextView = [[UITextView alloc] initWithFrame:CGRectMake(1, 1, frame.size.width-2, frame.size.height-2)];
//        __infoTextView.textColor = [UIColor blackColor];
        __infoTextView.text = @"will show some text here";
        __infoTextView.editable = NO;
        [self addSubview:__infoTextView];
        
    }
    return self;
}

- (void)dealloc
{
    [__infoTextView release];
    [super dealloc];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void)updateInfo:(NSString *)text
{
    [__infoTextView setText:text];
}

@end
