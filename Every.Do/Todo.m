//
//  Todo.m
//  Every.Do
//
//  Created by Tyson Parks on 2/27/18.
//  Copyright © 2018 Tyson Parks. All rights reserved.
//

#import "Todo.h"

@implementation Todo

-(instancetype)initWithTitle:(NSString *) title todoDescription:(NSString *) todoDescript priority: (NSUInteger) priorityNumber
{
    self = [super init];
    if (self) {
        _title = title;
        _todoDescript = todoDescript;
        _priorityNumber = priorityNumber;
        _isCompleted = NO;
    }
    return self;
}

@end
