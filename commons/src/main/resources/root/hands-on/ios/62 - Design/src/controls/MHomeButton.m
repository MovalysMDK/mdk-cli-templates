//
//  MHomeButton.m
//  mesnotesdefrais
//
//  Created by Quentin Lagarde on 20/03/2014.
//  Copyright (c) 2014 Sopra Consulting. All rights reserved.
//

#import "MHomeButton.h"

@interface MHomeButton()
@property (nonatomic, strong) UIImageView *circle;

@property (nonatomic, strong) UILabel *title;
@end

@implementation MHomeButton

-(void)initializeComponent {
    [super initializeComponent];
    
    self.circle = [[UIImageView alloc] init];
    self.title = [[UILabel alloc] init];
    
    [self addSubview:self.circle];
    [self addSubview:self.title];
    
    [self addConstraintsOnComponents];
}

-(void) addConstraintsOnComponents {
    
    [self.circle setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.title setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    //CIRCLE
    NSLayoutConstraint *circleHeight = [NSLayoutConstraint constraintWithItem:self.circle attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeHeight multiplier:0.5 constant:0];
    NSLayoutConstraint *circleWidth = [NSLayoutConstraint constraintWithItem:self.circle attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeHeight multiplier:0.5 constant:0];
    NSLayoutConstraint *circleCenterX = [NSLayoutConstraint constraintWithItem:self.circle attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterX multiplier:1 constant:0];
    NSLayoutConstraint *circleCenterY = [NSLayoutConstraint constraintWithItem:self.circle attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterY multiplier:1 constant:15];
    
    
    //TITLE
    NSLayoutConstraint *titleTop = [NSLayoutConstraint constraintWithItem:self.title attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTop multiplier:1 constant:0];
    NSLayoutConstraint *titleWidth = [NSLayoutConstraint constraintWithItem:self.title attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeWidth multiplier:1 constant:-10];
    NSLayoutConstraint *titleLeft = [NSLayoutConstraint constraintWithItem:self.title attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeft multiplier:1 constant:0];
    NSLayoutConstraint *titleHeight = [NSLayoutConstraint constraintWithItem:self.title attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeHeight multiplier:1.f/4.f constant:0];
    
    
    [self addConstraints:@[
                           circleCenterX, circleCenterY, circleHeight, circleWidth,
                           titleHeight, titleLeft, titleTop, titleWidth
                           ]];
    
}

-(void) setImageComponent: (UIImage *) image {
    [self.circle setImage:image];
}

-(void) setTitleComponent:(NSString *) title {
    [self.title setText:title];
    if([MFVersionManager isCurrentDeviceOfTypePhone]) {
        [self.title setFont:[UIFont fontWithName:@"HelveticaNeue-Light" size:24]];
    }
    else {
        [self.title setFont:[UIFont fontWithName:@"HelveticaNeue-Light" size:50]];
    }
    [self.title setTextColor:[UIColor blackColor]];
    [self.title setTextAlignment:NSTextAlignmentRight];
}

@end
