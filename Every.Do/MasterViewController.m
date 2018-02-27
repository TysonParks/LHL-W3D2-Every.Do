//
//  MasterViewController.m
//  Every.Do
//
//  Created by Tyson Parks on 2/27/18.
//  Copyright © 2018 Tyson Parks. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"

@interface MasterViewController () <UITableViewDelegate, UITableViewDataSource>

@property NSMutableArray <Todo *> *todoObjects;

-(void)setupTodoCells;

@end

@implementation MasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.leftBarButtonItem = self.editButtonItem;

    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(insertNewObject:)];
    self.navigationItem.rightBarButtonItem = addButton;
    
    // Assign self to delegate and datasource
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    
    
    // Init starter Todos
    Todo *buyMilk = [[Todo alloc]initWithTitle:@"Buy Milk" todoDescription:@"We need whole milk and 1%. Both should be organic!" priority:10];
    
    Todo *cleanOffice = [[Todo alloc]initWithTitle:@"Clean Office" todoDescription:@"Need to vacuum and leave extra time to clean the desk with windex" priority:6];
    
    Todo *catchUp = [[Todo alloc]initWithTitle:@"Catch Up" todoDescription:@"I have 3 assignments that need to be completed before Thursday. Assignment 7, Assignment 13, and Assignment 23" priority:8];
    
    // Instanciate Todo objects array
    self.todoObjects = [[NSMutableArray alloc]initWithObjects:buyMilk, cleanOffice, catchUp, nil];
    
 
}







- (void)viewWillAppear:(BOOL)animated {
}

 // To be called by detail view completion button
- (void)insertNewObject:(id)sender {
    if (!self.todoObjects) {
        self.todoObjects = [[NSMutableArray alloc] init];
    }
    
    [ self performSegueWithIdentifier:@"showEditor" sender:self];
    
//    [self.todoObjects insertObject:*newTodo atIndex:0]; //Fix Object
//    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
//    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
}


#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        Todo *todoObject = self.todoObjects[indexPath.row];
        DetailViewController *controller = (DetailViewController *)[segue destinationViewController];
        [controller setDetailItem:todoObject];
    }
}

- (void)prepareForEditorSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showEditor"]) {
//        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
//        Todo *todoObject = self.todoObjects[indexPath.row];
        EditorViewController *editorController = (EditorViewController *)[segue destinationViewController];
        
    }
}




#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.todoObjects.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    TodoTableViewCell *todoCell = [tableView dequeueReusableCellWithIdentifier:@"TodoCell" forIndexPath:indexPath];

    Todo *todoObject = self.todoObjects[indexPath.row];
    todoCell.todoTitleLabel.text = todoObject.title;
    todoCell.todoPriorityLabel.text = [NSString stringWithFormat:@"%lu", (unsigned long)todoObject.priorityNumber];
//    todoCell.todoCompletedButton.state =
    return todoCell;
}


- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}


- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.todoObjects removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}


@end
