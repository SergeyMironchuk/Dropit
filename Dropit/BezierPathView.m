//
//  BezierPathView.m
//  Dropit
//
//  Created by Admin on 26.10.15.
//  Copyright (c) 2015 Stanford. All rights reserved.
//

#import "BezierPathView.h"

@implementation BezierPathView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    [self.path stroke];
}

- (void)setPath:(UIBezierPath *)path
{
    _path = path;
    [self setNeedsDisplay];
}

@end
