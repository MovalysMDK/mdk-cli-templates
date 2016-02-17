//
//  MHomeViewController.h
//  mesnotesdefrais
//
//  Created by Lagarde Quentin on 09/02/2016.
//  Copyright © 2016 Sopra Consulting. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MHomeButton.h"

@interface MHomeViewController : MFViewController

@property (weak, nonatomic) IBOutlet MHomeButton *carnetButton;
@property (weak, nonatomic) IBOutlet MHomeButton *notesButton;
@property (weak, nonatomic) IBOutlet MHomeButton *aboutButton;

@end
