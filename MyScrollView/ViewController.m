//
//  ViewController.m
//  MyScrollView
//
//  Created by Stefan Verveniotis on 2016-11-14.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *yellowView;
@property (weak, nonatomic) IBOutlet MyScrollView *myScrollView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
/*
    
    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self
                                            action:@selector(panGesture:)];
    [self.view addGestureRecognizer:panGesture]; */
}

-(void) viewDidAppear:(BOOL)animated {
//    self.view.bounds = CGRectMake(self.view.bounds.origin.x, self.view.bounds.origin.y + 100, self.view.bounds.size.width, self.view.bounds.size.height);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
