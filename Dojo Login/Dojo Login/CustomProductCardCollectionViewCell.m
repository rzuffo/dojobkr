//
//  CollectionViewCell.m
//  Dojo Login
//
//  Created by Rafael Zuffo Tulimoschi on 7/17/15.
//  Copyright (c) 2015 CI&T. All rights reserved.
//

#import "CustomProductCardCollectionViewCell.h"

@implementation CustomProductCardCollectionViewCell

#pragma mark - Init
- (void)awakeFromNib
{
    [self roundedImageView];
}

#pragma mark - ImageView
- (void) roundedImageView
{
    self.layer.backgroundColor=[[UIColor clearColor] CGColor];
    _productImageView.layer.cornerRadius = 30;
    _productImageView.layer.borderWidth = 1.0;
    _productImageView.layer.masksToBounds = YES;
    _productImageView.layer.borderColor=[[UIColor grayColor] CGColor];
}

@end
