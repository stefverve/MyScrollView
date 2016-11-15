//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Stefan Verveniotis on 2016-11-14.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import "MyScrollView.h"

@implementation MyScrollView

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self
                                                                                     action:@selector(panGesture:)];
        [self addGestureRecognizer:panGesture];
        _contentSize = CGSizeMake(0, 750);
    }
    return self;
}

-(void) panGesture:(UIPanGestureRecognizer *)sender {
    if (sender.state == UIGestureRecognizerStateBegan) {
        self.startPoint = self.bounds.origin.y;
    }
    self.bounds = CGRectMake(self.bounds.origin.x, self.startPoint + [sender translationInView:self].y, self.bounds.size.width, self.bounds.size.height);
    if (self.bounds.origin.y <= 0) {
        self.bounds = CGRectMake(self.bounds.origin.x, 0, self.bounds.size.width, self.bounds.size.height);
    } else if (self.bounds.origin.y >= self.contentSize.height - [[UIScreen mainScreen] bounds].size.height) {
        self.bounds = CGRectMake(self.bounds.origin.x, self.contentSize.height - [[UIScreen mainScreen] bounds].size.height, self.bounds.size.width, self.bounds.size.height);
    }
}


@end
