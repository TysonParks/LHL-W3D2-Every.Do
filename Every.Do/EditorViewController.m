//
//  EditorViewController.m
//  Every.Do
//
//  Created by Tyson Parks on 2/27/18.
//  Copyright © 2018 Tyson Parks. All rights reserved.
//

#import "EditorViewController.h"

@interface EditorViewController ()

@property (weak, nonatomic) IBOutlet UITextField *editorTitleLabel;
@property (weak, nonatomic) IBOutlet UITextField *editorPriorityLabel;
@property (weak, nonatomic) IBOutlet UITextView *editorDescriptionLabel;



@property (copy, nonatomic) NSArray <NSString *> *collectionArray;

@end

@implementation EditorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    
    

    
}




- (IBAction)saveAndCloseEditorView:(id)sender {
    
    
    
    self.collectionArray = [[NSArray alloc] initWithObjects:self.editorTitleLabel.text, self.editorPriorityLabel.text, self.editorDescriptionLabel.text, nil];
    NSLog(@"This is my new array: %@, %@, %@", self.collectionArray[0], self.collectionArray[1], self.collectionArray[2]);
    
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}







@end
