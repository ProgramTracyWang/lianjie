//
//  ViewController.h
//  lianjie
//
//  Created by Tracy on 15/3/22.
//  Copyright (c) 2015年 ZJUT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISegmentedControl *colorChoice;
@property (weak, nonatomic) IBOutlet UILabel *chosenColor;
@property (weak, nonatomic) IBOutlet UIWebView *flowerView;

@end

