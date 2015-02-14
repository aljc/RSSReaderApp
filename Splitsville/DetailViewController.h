//
//  DetailViewController.h
//  Splitsville
//
//  Created by Alice Chang on 2/13/15.
//  Copyright (c) 2015 Alice Chang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) NSDictionary *linkItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

