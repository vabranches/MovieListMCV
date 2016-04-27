//
//  ItemListTableViewController.h
//  MovieListMCV
//
//  Created by Valter Abranches on 16/04/16.
//  Copyright © 2016 Valter Abranches. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Library;

@interface ItemListTableViewController : UITableViewController
@property (strong, nonatomic) Library *library;
@end
