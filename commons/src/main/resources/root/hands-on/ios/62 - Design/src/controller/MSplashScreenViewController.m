//
//  MSplashScreenViewController.m
//  mesnotesdefrais
//
//  Created by Quentin Lagarde on 29/07/2014.
//  Copyright (c) 2014 Sopra Consulting. All rights reserved.
//

#import "MSplashScreenViewController.h"

@interface MSplashScreenViewController ()

@end

@implementation MSplashScreenViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[UIApplication sharedApplication] setStatusBarHidden:YES];

    [self initializeBackgroundGradientAfterLayoutSubview:NO];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    [self initializeBackgroundGradientAfterLayoutSubview:YES];
}

-(BOOL)prefersStatusBarHidden {
    return YES;
}



/**
 * @brief Background Graident provider
 */
- (void) initializeBackgroundGradientAfterLayoutSubview:(BOOL)fromLayouting {
    
    if(fromLayouting) {
        [self.view.layer.sublayers[0] removeFromSuperlayer];
    }
    
    UIColor *colorOne = [UIColor colorWithRed:(227.0/255.0) green:(31.0/255.0) blue:(34.0/255.0) alpha:1.0];
    UIColor *colorTwo = [UIColor colorWithRed:(152.0/255.0)  green:(0/255.0)  blue:(0/255.0)  alpha:1.0];
    
    NSArray *colors = [NSArray arrayWithObjects:(id)colorOne.CGColor, colorTwo.CGColor, nil];
    NSNumber *stopOne = [NSNumber numberWithFloat:0.0];
    NSNumber *stopTwo = [NSNumber numberWithFloat:1.0];
    
    NSArray *locations = [NSArray arrayWithObjects:stopOne, stopTwo, nil];
    
    CAGradientLayer *headerLayer = [CAGradientLayer layer];
    headerLayer.colors = colors;
    headerLayer.locations = locations;
    headerLayer.frame = self.view.bounds;
    [self.view.layer insertSublayer:headerLayer atIndex:0];
}

@end
