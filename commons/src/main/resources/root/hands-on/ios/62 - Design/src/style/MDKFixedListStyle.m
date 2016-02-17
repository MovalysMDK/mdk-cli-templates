//
//  MFixedListStyle.m
//  mesnotesdefrais
//
//  Created by Lagarde Quentin on 09/02/2016.
//  Copyright © 2016 Sopra Consulting. All rights reserved.
//

#import "MDKFixedListStyle.h"

@implementation MDKFixedListStyle

-(void)applyStandardStyleOnComponent:(MDKFixedList *)component {
    component.addButton.backgroundColor = [UIColor lightGrayColor];
}

@end
