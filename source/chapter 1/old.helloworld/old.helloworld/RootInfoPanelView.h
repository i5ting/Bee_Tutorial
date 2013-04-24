//
//  RootInfoPanelView.h
//  old.helloworld
//
//  Created by sang alfred on 4/22/13.
//  Copyright (c) 2013 sang alfred. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol RootInfoPanelViewProtocol <NSObject>
//@required
//- (void)updateInfo:(NSString *)text;

@end

@interface RootInfoPanelView : UIView

@property(nonatomic,assign,readwrite) id<RootInfoPanelViewProtocol> delegate;

- (void)updateInfo:(NSString *)text;

@end
