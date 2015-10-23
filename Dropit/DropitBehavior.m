//
//  DropitBehavior.m
//  Dropit
//
//  Created by Admin on 23.10.15.
//  Copyright (c) 2015 Stanford. All rights reserved.
//

#import "DropitBehavior.h"

@interface DropitBehavior()
@property (strong, nonatomic) UICollisionBehavior *collider;
@property (strong, nonatomic) UIGravityBehavior *gravity;

@end

@implementation DropitBehavior
- (UIGravityBehavior *)gravity
{
    if (!_gravity) {
        _gravity = [[UIGravityBehavior alloc] init];
    }
    return _gravity;
}

- (UICollisionBehavior *)collider
{
    if (!_collider) {
        _collider = [[UICollisionBehavior alloc] init];
        _collider.translatesReferenceBoundsIntoBoundary = YES;
    }
    return _collider;
}

- (instancetype)init
{
    self = [super init];
    if (self ) {
        [self addChildBehavior:self.gravity];
        [self addChildBehavior:self.collider];
    }
    return self;
}

- (void)addItem:(id<UIDynamicItem>)item
{
    [self.gravity addItem:item];
    [self.collider addItem:item];
}

- (void)removeItem:(id<UIDynamicItem>)item
{
    [self.gravity removeItem:item];
    [self.collider removeItem:item];
}
@end
