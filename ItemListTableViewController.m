//
//  ItemListTableViewController.m
//  MovieListMCV
//
//  Created by Valter Abranches on 16/04/16.
//  Copyright © 2016 Valter Abranches. All rights reserved.
//

#import "ItemListTableViewController.h"
#import "AddItemTableViewController.h"
#import "Item.h"
#import "Library.h"

@interface ItemListTableViewController ()


@end

@implementation ItemListTableViewController

#pragma mark - ViewController Life Cicle
- (void)viewDidLoad{
    [super viewDidLoad];
    //_myList=@[@"texto 1",@"texto 2",@"texto 3",@"texto 4"];
    //_myList= [[NSMutableArray alloc] initWithArray:@[@"texto 1",@"texto 2",@"texto 3",@"texto 4"]];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(updateUI:) name:@"DidUpadateItems" object:nil];
    _library = [[Library alloc] init];
    
}

#pragma mark - TableView Data Source
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _library.numberOfItems;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"itemCell" forIndexPath:indexPath];
    
    Item *item =[_library itemForIndex:indexPath.row];
    cell.textLabel.text = item.title;
    cell.detailTextLabel.text = item.year;
    
    return cell;
}

#pragma mark - Observer Methods
-(void)updateUI:(NSNotification *)notification{
    [self.tableView reloadData];
}

#pragma mark - TableView Delegate

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

}

-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath{
    return YES;
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{

}

#pragma mark - Navigation
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"AddItem"]) {
        AddItemTableViewController *vc = ((UINavigationController *)segue.destinationViewController).visibleViewController;
        vc.library = _library;
    }
}

@end
