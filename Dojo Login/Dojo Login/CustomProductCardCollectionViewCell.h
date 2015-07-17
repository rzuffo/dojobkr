//
//  CollectionViewCell.h
//  Dojo Login
//
//  Created by Rafael Zuffo Tulimoschi on 7/17/15.
//  Copyright (c) 2015 CI&T. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomProductCardCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *productImageView;
@property (weak, nonatomic) IBOutlet UILabel *productDetalLabel;

@end
