//
//  ViewController.m
//  lianjie
//
//  Created by Tracy on 15/3/22.
//  Copyright (c) 2015年 ZJUT. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize colorChoice;
@synthesize chosenColor;
@synthesize flowerView;

-(IBAction)getFlower:(id)sender
{
    NSString *outputHTML;
    NSString *color;
    NSString *colorVal;
    int colorNum;
    colorNum = (int)self.colorChoice.selectedSegmentIndex;
    switch (colorNum) {
        case 0:
            color = @"Red";
            colorVal = @"red";
            break;
        case 1:
            color = @"Blue";
            colorVal = @"blue";
            break;
        case 2:
            color = @"Yellow";
            colorVal = @"yellow";
            break;
        case 3:
            color = @"Green";
            colorVal = @"green";
            break;
    }
    self.chosenColor.text = [[NSString alloc]initWithFormat:@"%@",color];
   outputHTML=[[NSString alloc] initWithFormat:@"<body style='margin: 0px; padding: 0px'><img height='300' src='http://www.floraphotographs.com/showrandom.php?color=%@'></body>",colorVal];
    //outputHTML=[[NSString alloc] initWithFormat:@"<body style='margin: 0px; padding: 0px'><img height='1200' src='http://www.floraphotographs.com/detail.php?imageid=943&startpoint=0&pagetype=3&color=orange&category=%&type='></body>"];
    [self.flowerView loadHTMLString:outputHTML baseURL:nil];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
