//
//  MFUIBaseViewModel+AmountHelper.h
//  mesnotesdefrais
//
//  Created by Lagarde Quentin on 10/02/2016.
//  Copyright © 2016 Sopra Consulting. All rights reserved.
//

#import <MFUI/MFUI.h>

@interface MFUIBaseViewModel (AmountHelper)

-(NSNumber *)numberFromHumanReadableAmount:(NSString *)humanReadableString;

-(NSString *)humanReadableAmountFromNumber:(NSNumber *)amount;
@end
