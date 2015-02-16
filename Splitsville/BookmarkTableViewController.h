//
//  BookmarkTableViewController.h
//  Splitsville
//
//  Created by ajchang on 2/15/15.
//  Copyright (c) 2015 Alice Chang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BookmarkTableViewController : UITableViewController

@property (strong, nonatomic) NSArray* bookmarksFromDefaults;
@property (weak, nonatomic) IBOutlet UILabel *tit;

@end
