//
//  ItemListTableViewController.m
//  MovieListMCV
//
//  Created by Valter Abranches on 16/04/16.
//  Copyright © 2016 Valter Abranches. All rights reserved.
//

#import "ItemListTableViewController.h"

@interface ItemListTableViewController ()
@property NSMutableArray *myList;

@end

@implementation ItemListTableViewController

#pragma mark - ViewController Life Cicle
- (void)viewDidLoad{
    [super viewDidLoad];
    //_myList=@[@"texto 1",@"texto 2",@"texto 3",@"texto 4"];
    _myList= [[NSMutableArray alloc] initWithArray:@[@"texto 1",@"texto 2",@"texto 3",@"texto 4"]];
    
}

#pragma mark - TableView Data Source
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _myList.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"itemCell" forIndexPath:indexPath];
    
    NSString *text = _myList[indexPath.row];
    cell.textLabel.text = text;
    
    return cell;
}

#pragma mark - TableView Delegate

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *text = _myList[indexPath.row];
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Descrição" message:text preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action  = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:action];
    [self presentViewController:alert animated:YES completion:nil];
    
}

-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath{
    return YES;
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    if (editingStyle==UITableViewCellEditingStyleDelete) {
        [_myList removeObjectAtIndex:indexPath.row];
        [tableView reloadData];
    }
}

@end
