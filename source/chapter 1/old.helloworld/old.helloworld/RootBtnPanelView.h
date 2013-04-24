//
//  RootInfoPanelView.h
//  old.helloworld
//
//  Created by sang alfred on 4/22/13.
//  Copyright (c) 2013 sang alfred. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol RootBtnPanelViewProtocol <NSObject>
@required
- (void)hello_call_back;
- (void)world_call_back;
- (void)tb_call_back;

@end

@interface RootBtnPanelView : UIView

@property(nonatomic,assign,readwrite) id<RootBtnPanelViewProtocol> delegate;

@end
