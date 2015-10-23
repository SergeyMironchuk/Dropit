//
//  DropitBehavior.h
//  Dropit
//
//  Created by Admin on 23.10.15.
//  Copyright (c) 2015 Stanford. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DropitBehavior : UIDynamicBehavior
- (void)addItem: (id <UIDynamicItem>) item;
- (void)removeItem: (id<UIDynamicItem>) item;

@end
