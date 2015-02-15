//
//  DetailViewController.m
//  Splitsville
//
//  Created by Alice Chang on 2/13/15.
//  Copyright (c) 2015 Alice Chang. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item


- (IBAction)addToBookmarks:(UIBarButtonItem *)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
  }

//can't just use the default setter because we also want to update the view
//(call configureView) after we set it
- (void)setDetailItem:(NSDictionary *)newLinkItem { //**must be named setDetailItem to override existing function
    if (self.linkItem != newLinkItem) { //if view isn't already onscreen
        self.linkItem = newLinkItem;
        [self configureView];
        NSLog(@"setter override");
    }
}

//custom method to update the onscreen view
- (void)configureView {
    // Update the user interface for the detail item.
    if (self.linkItem) {
        NSLog(@"@configure view");
        NSURL *url = [NSURL URLWithString:self.linkItem[@"link"]];
        NSLog(@"url to load: %@", self.linkItem[@"link"]);
        [self.webView loadRequest:[NSURLRequest requestWithURL:url]];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
