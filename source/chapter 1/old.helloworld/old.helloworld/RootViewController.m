//
//  RootViewController.m
//  old.helloworld
//
//  Created by sang alfred on 4/22/13.
//  Copyright (c) 2013 sang alfred. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()
{
    RootInfoPanelView * __infoPanelView;
}
@end

@implementation RootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    UILabel * titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 300, 40)];
    titleLabel.text = @"演示常规视图模块划分";
    titleLabel.textColor = [UIColor orangeColor];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:titleLabel];
    
    RootBtnPanelView * helloworldPanelView = [[RootBtnPanelView alloc] initWithFrame:CGRectMake(10, 60, 300, 180)];
    helloworldPanelView.delegate = self;
    [self.view addSubview:helloworldPanelView];
    
    __infoPanelView = [[RootInfoPanelView alloc] initWithFrame:CGRectMake(10, 260, 300, 180)];
    [self.view addSubview:__infoPanelView];
}

- (void)viewWillAppear:(BOOL)animated{
    [self.navigationController setNavigationBarHidden:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - RootBtnPanelViewProtocol Implemetions

- (void)hello_call_back
{
    [__infoPanelView updateInfo:@"hello\n"];
}

- (void)world_call_back
{
    [__infoPanelView updateInfo:@"world\n"];
}

- (void)tb_call_back
{
    [self.navigationController pushViewController:[[TableDemoViewController alloc] initWithFrame:CGRectMake(0, 0, 320, 480)] animated:YES];
}
@end
