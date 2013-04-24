//
//  TableDemoViewController.m
//  old.helloworld
//
//  Created by sang on 4/24/13.
//  Copyright (c) 2013 sang alfred. All rights reserved.
//

#import "TableDemoViewController.h"

@interface TableDemoViewController ()

@end

@implementation TableDemoViewController
@synthesize table;



-(id)initWithFrame:(CGRect)frame
{
    if (self = [super init]) {
        _frame = frame;
    }
    return self;
}


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
    [self.navigationController setNavigationBarHidden:NO];
    self.view.backgroundColor = [UIColor darkGrayColor];
    
    
    
    self.table = [[UITableView alloc] initWithFrame:_frame style:UITableViewStylePlain];
    self.table.delegate = self;
    self.table.dataSource = self;
    [self.view addSubview:self.table];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - table source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    static NSString *CellIdentifier = @"Cell";

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] ;
    }

//    NSDictionary *d = [self.result_array objectAtIndex:indexPath.row];
//    if ([[d objectForKey:@"news"] count]>0) {
//        NSString *title = [[[d objectForKey:@"news"] objectAtIndex:0] objectForKey:@"title"];
//        cell.textLabel.text = [NSString stringWithFormat:@"#%d %@", indexPath.row,title];
//    }else{
//        cell.textLabel.text = [NSString stringWithFormat:@"#%d  ", indexPath.row];
//    }

    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 44.0f;
}
@end
