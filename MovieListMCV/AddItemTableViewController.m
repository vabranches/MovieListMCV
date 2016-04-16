//
//  AddItemTableViewController.m
//  MovieListMCV
//
//  Created by Valter Abranches on 16/04/16.
//  Copyright © 2016 Valter Abranches. All rights reserved.
//

#import "AddItemTableViewController.h"

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
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
