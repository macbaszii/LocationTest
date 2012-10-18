//
//  BDViewController.h
//  LocationTest
//
//  Created by Kiattisak on 10/16/55 BE.
//  Copyright (c) 2555 Kiattisak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BDViewController : UIViewController <CLLocationManagerDelegate>

@property (nonatomic, weak) IBOutlet UILabel *latitudeLabel;
@property (nonatomic, weak) IBOutlet UILabel *longtitudeLabel;

@end
