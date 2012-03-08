//
//  OfficeViewController.m
//  medical
//
//  Created by Matt LaDuca on 3/1/12.
//  Copyright (c) 2012  PPA. All rights reserved.
//

#import "OfficeViewController.h"

@interface OfficeViewController()

- (UIView *)officeNameHeader;

@end



@implementation OfficeViewController

@synthesize office = _office;
@synthesize phoneNumber = _phoneNumber;
@synthesize email = _email;
@synthesize website = _website;
@synthesize location = _location;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - View lifecycle


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.tableView.tableHeaderView = [self officeNameHeader];
}

- (void)viewWillAppear:(BOOL)animated
{
    self.navigationItem.hidesBackButton = YES;
    self.location.text = @"12909 Woodliegh Ave\nTampa, FL\nUnited States";
}

- (void)viewDidUnload
{
    [self setPhoneNumber:nil];
    [self setEmail:nil];
    [self setWebsite:nil];
    [self setLocation:nil];
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - helpers

- (UIView *)officeNameHeader
{
    UIView *containerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 300, 60)];
    UILabel *headerLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 20, 300, 40)];
    
    headerLabel.text = [NSString stringWithFormat:@"Matt's Dental Office"];
    headerLabel.textColor = [UIColor whiteColor];
    headerLabel.shadowColor = [UIColor blackColor];
    headerLabel.shadowOffset = CGSizeMake(0, 1);
    headerLabel.font = [UIFont boldSystemFontOfSize:22];
    headerLabel.backgroundColor = [UIColor clearColor];
    headerLabel.textAlignment = UITextAlignmentCenter;
    [containerView addSubview:headerLabel];
    
    return containerView;
}

@end






















