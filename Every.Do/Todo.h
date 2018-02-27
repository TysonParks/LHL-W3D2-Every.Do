//
//  Todo.h
//  Every.Do
//
//  Created by Tyson Parks on 2/27/18.
//  Copyright © 2018 Tyson Parks. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Todo : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *todoDescript;
@property (nonatomic) NSUInteger priorityNumber;
@property (nonatomic) BOOL isCompleted;


@end
