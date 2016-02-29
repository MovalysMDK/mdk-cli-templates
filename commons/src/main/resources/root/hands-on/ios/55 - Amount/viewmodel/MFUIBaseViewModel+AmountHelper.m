//
//  MFUIBaseViewModel+AmountHelper.m
//  mesnotesdefrais
//
//  Created by Lagarde Quentin on 10/02/2016.
//  Copyright © 2016 Sopra Consulting. All rights reserved.
//

#import "MFUIBaseViewModel+AmountHelper.h"

@implementation MFUIBaseViewModel (AmountHelper)

-(NSNumber *)numberFromHumanReadableAmount:(NSString *)humanReadableString {
    humanReadableString = [humanReadableString stringByReplacingOccurrencesOfString:@"€" withString:@""];
    NSNumberFormatter *nf = [[NSNumberFormatter alloc] init];
    [nf setMaximumFractionDigits:2];
    NSNumber *newAmount = [nf numberFromString:humanReadableString];
    return newAmount;
}

-(NSString *)humanReadableAmountFromNumber:(NSNumber *)amount {
    NSNumberFormatter *nf = [[NSNumberFormatter alloc] init];
    [nf setMaximumFractionDigits:2];
    NSString *amountString = [nf stringFromNumber:amount];
    NSString *result = nil;
    if(amountString) {
        result = [NSString stringWithFormat:@"%@€", amountString];
        if([amountString componentsSeparatedByString:[nf currencyDecimalSeparator]].count == 1) {
            result = [NSString stringWithFormat:@"%@%@00€", amountString, [nf currencyDecimalSeparator]];
        }
    }
    
    if([amountString componentsSeparatedByString:[nf currencyDecimalSeparator]].count == 1) {
        result = [NSString stringWithFormat:@"%@%@00€", amountString, [nf currencyDecimalSeparator]];
    }
    return result;
}

@end
