//
//  MyScrollView.h
//  MyScrollView
//
//  Created by Stefan Verveniotis on 2016-11-14.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyScrollView : UIView

@property CGSize contentSize;
@property float startPoint;

-(void) panGesture:(UIPanGestureRecognizer *)sender;

@end
