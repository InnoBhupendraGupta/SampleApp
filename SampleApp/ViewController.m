//
//  ViewController.m
//  SampleApp
//
//  Created by Bhupender Gupta on 12/12/14.
//  Copyright (c) 2014 Bhupender Gupta. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self fibonacci];
}

- (void)fibonacci
{
    int n = 10, first = 0, second = 1, next, c;
    
    printf("Enter the number of terms\n");
    scanf("%d",&n);
    
    printf("First %d terms of Fibonacci series are :-\n",n);
    
    for ( c = 0 ; c < n ; c++ )
    {
        if ( c <= 1 )
            next = c;
        else
        {
            next = first + second;
            first = second;
            second = next;
        }
        
        printf("%d\n",next);
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
