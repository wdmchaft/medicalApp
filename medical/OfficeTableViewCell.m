//
//  OfficeTableViewCell.m
//  medical
//
//  Created by Matt LaDuca on 3/12/12.
//  Copyright (c) 2012  PPA. All rights reserved.
//

#import "OfficeTableViewCell.h"

@implementation OfficeTableViewCell

@synthesize officeImageView;
@synthesize officeLocationLabel;
@synthesize officeNameLabel;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    return [super initWithStyle:style reuseIdentifier:reuseIdentifier];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
}

@end
