//
//  EditorViewController.h
//  Every.Do
//
//  Created by Tyson Parks on 2/27/18.
//  Copyright © 2018 Tyson Parks. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Todo.h"

@protocol EditorViewControllerDelegate;

@interface EditorViewController : UIViewController

//@property (nonatomic, strong) Todo *aNewTodo;
@property (nonatomic, weak)id<EditorViewControllerDelegate> delegate;

@end


@protocol EditorViewControllerDelegate <NSObject>

-(void)editorViewController: (UIViewController *) viewController didDismissWithNewTodo: (Todo *) aTodo;

@end
