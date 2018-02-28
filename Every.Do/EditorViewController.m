//
//  EditorViewController.m
//  Every.Do
//
//  Created by Tyson Parks on 2/27/18.
//  Copyright © 2018 Tyson Parks. All rights reserved.
//

#import "EditorViewController.h"

@interface EditorViewController ()



@end

@implementation EditorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(segueBack)];
   
    self.navigationItem.leftBarButtonItem = backButton;
    
    
//    self.navigationItem.leftBarButtonItem = self.;
//
//    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(segueBack)];
//    self.navigationItem.rightBarButtonItem = addButton;
    
}


- (IBAction)saveAndCloseEditorView:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}







@end
