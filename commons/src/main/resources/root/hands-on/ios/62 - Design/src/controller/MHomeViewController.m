//
//  MHomeViewController.m
//  mesnotesdefrais
//
//  Created by Lagarde Quentin on 09/02/2016.
//  Copyright © 2016 Sopra Consulting. All rights reserved.
//

#import "MHomeViewController.h"

#import "MReport.h"
#import "MExpense.h"

@implementation MHomeViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    [self customizeButtons];
    
}

-(void) customizeButtons {
    [self.carnetButton setBackgroundImage:[UIImage imageNamed:@"NDF-43"] forState:UIControlStateNormal];
    [self.notesButton setBackgroundImage:[UIImage imageNamed:@"NDF-42"] forState:UIControlStateNormal];
    [self.aboutButton setBackgroundImage:[UIImage imageNamed:@"NDF-41"] forState:UIControlStateNormal];
    
    [self.carnetButton setBackgroundImage:[UIImage imageNamed:@"NDF-46"] forState:UIControlStateHighlighted];
    [self.notesButton setBackgroundImage:[UIImage imageNamed:@"NDF-45"] forState:UIControlStateHighlighted];
    [self.aboutButton setBackgroundImage:[UIImage imageNamed:@"NDF-44"] forState:UIControlStateHighlighted];
    
    [self.carnetButton setImageComponent:[UIImage imageNamed:@"NDF_carneticon"]];
    [self.aboutButton setImageComponent:[UIImage imageNamed:@"NDF_aproposicon"]];
    [self.notesButton setImageComponent:[UIImage imageNamed:@"NDF_noteicon"]];
    
    [self.carnetButton setTitleComponent: MFLocalizedStringFromKey( @"carnetButtonTitle")];
    [self.aboutButton  setTitleComponent: MFLocalizedStringFromKey( @"aboutButtonTitle")];
    [self.notesButton  setTitleComponent:MFLocalizedStringFromKey( @"notesButtonTitle")];
    
}

@end
