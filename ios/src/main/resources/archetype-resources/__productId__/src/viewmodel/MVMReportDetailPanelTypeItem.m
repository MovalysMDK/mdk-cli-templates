//
//  MVMReportDetailPanelTypeItem.m
//	myexpenses
//
//  Created by Movalys MDK.
//  Copyright (c) 2012 Sopra Group. All rights reserved.
//


// Factory headers
#import "MExpenseType+Factory.h"

// Viewmodel headers
#import "MVMReportDetailPanelTypeItem.h"

// Custom imports
//@non-generated-start[custom-imports]
#import "MFUIBaseViewModel+AmountHelper.h"
//@non-generated-end


// Constants
//@non-generated-start[constants][X]
//@non-generated-end


@interface MVMReportDetailPanelTypeItem ()

//@non-generated-start[class-extension][X]
//@non-generated-end

@end

@implementation MVMReportDetailPanelTypeItem {


//@non-generated-start[instance-variables][X]
//@non-generated-end
}



//@non-generated-start[synthesize][X]
//@non-generated-end

//@non-generated-start[custom-properties][X]
//@non-generated-end




- (id) init
{
    self = [super init];
    if (self) {

//@non-generated-start[validateForInsert][X]
        _isInitialized = NO;
        _isInitialized = YES;
//@non-generated-end
    }

    return self;
}


- (NSArray *)getBindedProperties
{

//@non-generated-start[binded-properties][X]
    return @[
        @"id_identifier",
        @"desc",
        @"category",
        @"amountMax",
    ];
//@non-generated-end
}


- (void) updateFromIdentifiable:(MExpenseType *)entity
{

//@non-generated-start[updateFromIdentifiable-before][X]
//@non-generated-end
    [self clear];
    if (entity != nil) {
        self.id_identifier = entity.identifier;
        self.desc = entity.desc;
        self.category = entity.category;
        self.amountMax = entity.amountMax;


//@non-generated-start[update-from-identifiable][X]
//@non-generated-end
    }

//@non-generated-start[updateFromIdentifiable-after][X]
//@non-generated-end
    self.hasChanged = NO;
}


- (void) modifyToIdentifiable:(MExpenseType *)entity inContext:(id<MFContextProtocol>)context
{

//@non-generated-start[modifyToIdentifiable-before][X]
//@non-generated-end
    if (entity != nil) {
        entity.identifier = self.id_identifier;

//@non-generated-start[modify-to-identifiable][X]
//@non-generated-end
    }

//@non-generated-start[modifyToIdentifiable-after][X]
//@non-generated-end
}


- (NSArray *)getChildViewModels
{

//@non-generated-start[getChildViewModels][X]
    NSMutableArray *result = [[NSMutableArray alloc] init];
    return result;
//@non-generated-end
}


/**
 * Validate the viewmodel before save
 */
- (BOOL) validate
{

//@non-generated-start[validate][X]
    BOOL result = YES;
    result = result && (self.id_identifier != nil);
    result = result && (self.desc != nil);
    result = result && (self.amountMax != nil);
    return result;
//@non-generated-end
}


/**
 * @brief Clear this view model.
 */
- (void) clear
{
    self.id_identifier = @ - 1;
    self.desc = nil;
    self.category = MEXPENSECATEGORY_NONE;
    self.amountMax = nil;

//@non-generated-start[clear-after][X]
//@non-generated-end
}


//@non-generated-start[other-methods][X]
- (NSString *)humanReadableAmount {
    return [self humanReadableAmountFromNumber:self.amountMax];
}
- (void)setHumanReadableAmount:(NSString *)humanReadableAmount {
    self.amountMax = [self numberFromHumanReadableAmount:humanReadableAmount];
}
//@non-generated-end

@end

