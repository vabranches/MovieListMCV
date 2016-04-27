//
//  AddItemTableViewController.m
//  MovieListMCV
//
//  Created by Valter Abranches on 16/04/16.
//  Copyright © 2016 Valter Abranches. All rights reserved.
//

#import "AddItemTableViewController.h"
#import "Item.h"
#import "Book.h"
#import "Movie.h"
#import "Series.h"
#import "Library.h"

@interface AddItemTableViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *itemTypeSegmentedControl;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *salvarButtonItem;
@property (weak, nonatomic) IBOutlet UITextField *tituloTextField;
@property (weak, nonatomic) IBOutlet UITextField *autorTextField;
@property (weak, nonatomic) IBOutlet UITextField *anoTextField;
@property (weak, nonatomic) IBOutlet UITextView *descricaoTextView;


@end

@implementation AddItemTableViewController

- (IBAction)cancelar:(UIBarButtonItem *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)salvar:(UIBarButtonItem *)sender {
    NSString *title = _tituloTextField.text;
    NSString *author = _autorTextField.text;
    NSString *year = _anoTextField.text;
    NSString *itemDescription = _descricaoTextView.text;
    
    Item *newItem;
    
    switch (_itemTypeSegmentedControl.selectedSegmentIndex) {
        case 0:
            newItem = [[Movie alloc] init];
            break;
        case 1:
            newItem = [[Book alloc] init];
            break;
        case 2:
            newItem = [[Series alloc] init];
            break;
        default:
            break;
    }
    
    newItem.title = title;
    newItem.year = year;
    newItem.itemDescription = itemDescription;
    [newItem setResponsible:author];
    
    [_library addItem:newItem];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
