//
//  MVMReportDetailPanelExpensesItemCell.m
//	myexpenses
//
//  Created by Movalys MDK.
//  Copyright (c) 2012 Sopra Group. All rights reserved.
//


// Entity headers
#import "MCustomer.h"
#import "MCustomerAddress.h"
#import "MExpense.h"
#import "MExpensePhoto.h"
#import "MExpenseType.h"
#import "MReport.h"

// Factory headers
#import "MCustomer+Factory.h"
#import "MCustomerAddress+Factory.h"
#import "MExpense+Factory.h"
#import "MExpensePhoto+Factory.h"
#import "MExpenseType+Factory.h"
#import "MReport+Factory.h"

// Dao headers
#import "MExpenseType+Dao.h"

// Viewmodel headers
#import "MVMReportDetailPanel.h"
#import "MVMReportDetailPanelExpensesItemCell.h"
#import "MVMReportDetailPanelExpensesList.h"
#import "MVMReportDetailPanelTypeItem.h"

// Custom imports
//@non-generated-start[custom-imports]
#import "MFUIBaseViewModel+AmountHelper.h"
//@non-generated-end


// Constants
//@non-generated-start[constants][X]
//@non-generated-end


@interface MVMReportDetailPanelExpensesItemCell ()

//@non-generated-start[class-extension][X]
//@non-generated-end

@end

@implementation MVMReportDetailPanelExpensesItemCell {


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
        @"selectedMVMReportDetailPanelTypeItem",
        @"id_identifier",
        @"desc",
        @"amount",
        @"photo",
        @"state",
    ];
//@non-generated-end
}


- (void) updateFromIdentifiable:(MExpense *)entity
{

//@non-generated-start[updateFromIdentifiable-before][X]
//@non-generated-end
    [self clear];
    if (entity != nil) {
        self.id_identifier = entity.identifier;
        self.desc = entity.desc;
        self.amount = entity.amount;
        self.photo = [MFPhotoViewModel toViewModel:entity.photo parentVm:self
                                parentPropertyName      :@"photo"]
        ;
        self.state = entity.state;
        MExpenseType *oMExpenseType1 = entity.type;
        if (oMExpenseType1 == nil) {
            [self clearType];
        } else {
        }

        MVMReportDetailPanel *oMVMReportDetailPanel =
            (MVMReportDetailPanel *) [((MVMReportDetailPanelExpensesList *)[self parentViewModel]) parentViewModel];

        if (entity.type) {
            NSArray *lstVM = [oMVMReportDetailPanel.lstMVMReportDetailPanelType getChildViewModels];
            for (MVMReportDetailPanelTypeItem *item in lstVM) {
                if ([item.id_identifier isEqualToNumber:(entity.type.identifier)]) {
                    self.selectedMVMReportDetailPanelTypeItem = item;
                }
            }
        }

//@non-generated-start[update-from-identifiable][X]
//@non-generated-end
    }

//@non-generated-start[updateFromIdentifiable-after][X]
//@non-generated-end
    self.hasChanged = NO;
}


- (void) modifyToIdentifiable:(MExpense *)entity inContext:(id<MFContextProtocol>)context
{

//@non-generated-start[modifyToIdentifiable-before][X]
//@non-generated-end
    if (entity != nil) {
        entity.identifier = self.id_identifier;
        entity.desc = self.desc;
        entity.amount = self.amount;
        entity.photo = [MFPhotoViewModel convertViewModel                             :self.photo
                                              toComponent                             :entity.photo ==
                        nil ?[MExpensePhoto MF_createMExpensePhotoInContext : context]:entity.photo]
        ;

//@non-generated-start[modify-to-identifiable][X]
//@non-generated-end

        if (self.selectedMVMReportDetailPanelTypeItem) {
            entity.type = [MExpenseType MF_findByIdentifier:self.selectedMVMReportDetailPanelTypeItem.id_identifier inContext:context];
        }else {
            entity.type = nil;
        }
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


- (NSString *)propertyNameInParentViewModel
{
    return @"mVMReportDetailPanelExpensesItemCell";
}


/**
 * @brief Clear this view model.
 */
- (void) clear
{
    self.id_identifier = @ - 1;
    self.desc = nil;
    self.amount = @0;
    self.photo = nil;
    self.state = MEXPENSESTATE_AMOUNTNONE;
    MVMReportDetailPanel *oMVMReportDetailPanel =
        (MVMReportDetailPanel *) [((MVMReportDetailPanelExpensesList *)[self parentViewModel]) parentViewModel];

    if (oMVMReportDetailPanel.lstMVMReportDetailPanelType && [oMVMReportDetailPanel.lstMVMReportDetailPanelType getChildViewModels] &&
        [oMVMReportDetailPanel.lstMVMReportDetailPanelType getChildViewModels].count > 0) {
        self.selectedMVMReportDetailPanelTypeItem =
            [[oMVMReportDetailPanel.lstMVMReportDetailPanelType getChildViewModels] objectAtIndex:0];
    }
    [self clearType];

//@non-generated-start[clear-after][X]
//@non-generated-end
}


/**
 * @brief Clear datas associated to a MExpenseType.
 */
- (void) clearType
{
    self.selectedMVMReportDetailPanelTypeItem = nil;
    [super clear];

//@non-generated-start[clear-after-Type][X]
//@non-generated-end
}


//@non-generated-start[other-methods][X]

- (void)createViewModelConfiguration {
    MFViewModelConfiguration *config = [MFViewModelConfiguration configurationForViewModel:self];
    MFListenerDescriptor *propertyChangedListener = [MFListenerDescriptor listenerDescriptorForType:MFListenerEventTypeViewModelPropertyChanged
                                                                            withFormat:@"updateExpenseState : selectedMVMReportDetailPanelTypeItem, amount", nil];
    [config addListenerDescriptor:propertyChangedListener];
}

- (void)updateExpenseState {
    if( self.selectedMVMReportDetailPanelTypeItem && self.selectedMVMReportDetailPanelTypeItem.amountMax && [self.selectedMVMReportDetailPanelTypeItem.amountMax intValue] > 0 ) {
        if([self.amount intValue] > [self.selectedMVMReportDetailPanelTypeItem.amountMax intValue] ) {
            self.state = MEXPENSESTATE_AMOUNTOVERMAX;
        }
        else {
            self.state = MEXPENSESTATE_AMOUNTOK;
        }
    }
    else {
        self.state = MEXPENSESTATE_AMOUNTNONE;
    }
}

- (NSString *)humanReadableAmount {
    return [self humanReadableAmountFromNumber:self.amount];
}
- (void)setHumanReadableAmount:(NSString *)humanReadableAmount {
    self.amount = [self numberFromHumanReadableAmount:humanReadableAmount];
}

//@non-generated-end

@end

