//
//  MVMReportDetailPanel.m
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
#import "MCustomer+Dao.h"
#import "MExpenseType+Dao.h"

// Viewmodel headers
#import "MVMReportDetailPanel.h"
#import "MVMReportDetailPanelCustomerItem.h"
#import "MViewModelCreator.h"

// Dataloader headers
#import "MMyExpensesScreenDetailLoader.h"

// Custom imports
//@non-generated-start[custom-imports]
#import "MFUIBaseViewModel+AmountHelper.h"
//@non-generated-end


// Constants
//@non-generated-start[constants][X]
//@non-generated-end


@interface MVMReportDetailPanel ()

//@non-generated-start[class-extension][X]
//@non-generated-end

@end

@implementation MVMReportDetailPanel {


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
        @"selectedMVMReportDetailPanelCustomerItem",
        @"lstMVMReportDetailPanelCustomer",
        @"lstMVMReportDetailPanelType",
        @"id_identifier",
        @"date",
        @"reason",
        @"amountTotal",
        @"mVMReportDetailPanelExpensesList",
    ];
//@non-generated-end
}


- (void) updateFromIdentifiable:(MReport *)entity
{

//@non-generated-start[updateFromIdentifiable-before][X]
//@non-generated-end
    [self clear];
    if (entity != nil) {
        self.id_identifier = entity.identifier;
        self.date = entity.date;
        self.reason = entity.reason;
        self.amountTotal = entity.amountTotal;
        MViewModelCreator *viewModelCreator = [[MFApplication getInstance] getBeanWithKey:BEAN_KEY_VIEW_MODEL_CREATOR];
        MVMReportDetailPanelExpensesList *tempmVMReportDetailPanelExpensesList =
            [viewModelCreator createOrUpdateMVMReportDetailPanelExpensesList:nil];

        tempmVMReportDetailPanelExpensesList.parentViewModel = self;
        MCustomer *oMCustomer1 = entity.customer;
        if (oMCustomer1 == nil) {
            [self clearCustomer];
        } else {
        }

        if (entity.expenses != nil) {
            for (id itemDataMExpense in entity.expenses) {
                MFUIBaseViewModel *vmCell =
                    [viewModelCreator createOrUpdateMVMReportDetailPanelExpensesItemCell:itemDataMExpense parentVm:
                     tempmVMReportDetailPanelExpensesList
                    ];
                [tempmVMReportDetailPanelExpensesList add:vmCell];
            }
        }
        self.mVMReportDetailPanelExpensesList = tempmVMReportDetailPanelExpensesList;
        if (entity.customer) {
            NSArray *lstVM = [self.lstMVMReportDetailPanelCustomer getChildViewModels];
            for (MVMReportDetailPanelCustomerItem *item in lstVM) {
                if ([item.id_identifier isEqualToNumber:(entity.customer.identifier)]) {
                    self.selectedMVMReportDetailPanelCustomerItem = item;
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


- (void) modifyToIdentifiable:(MReport *)entity inContext:(id<MFContextProtocol>)context
{

//@non-generated-start[modifyToIdentifiable-before][X]
//@non-generated-end
    if (entity != nil) {
        entity.identifier = self.id_identifier;
        entity.date = self.date;
        entity.reason = self.reason;
        entity.amountTotal = self.amountTotal;
        if (self.mVMReportDetailPanelExpensesList != nil) {
            NSMutableDictionary *dictById = [[NSMutableDictionary alloc] init];
            if (entity.expenses != nil) {
                for (MExpense *entityForList in entity.expenses) {
                    [dictById setValue:entityForList forKey:[entityForList.identifier stringValue]];
                }
                entity.expenses = [NSOrderedSet orderedSet];
            }

            for (MVMReportDetailPanelExpensesItemCell *vmCell in self.mVMReportDetailPanelExpensesList.viewModels) {
                MExpense *entityForList = [dictById valueForKey:[vmCell.id_identifier stringValue]];
                if (entityForList == nil) {
                    entityForList = [MExpense MF_createMExpenseInContext:context];
                }
                [vmCell modifyToIdentifiable:entityForList inContext:context];
                [entity addExpensesObject:entityForList];


                [dictById removeObjectForKey:[vmCell.id_identifier stringValue]];
            }


            for (id key in dictById) {
                [[context entityContext] deleteObject:((MExpense *)[dictById objectForKey:key])];
            }
        }

//@non-generated-start[modify-to-identifiable][X]
//@non-generated-end

        if (self.selectedMVMReportDetailPanelCustomerItem) {
            entity.customer = [MCustomer MF_findByIdentifier:self.selectedMVMReportDetailPanelCustomerItem.id_identifier inContext:context];
        }else {
            entity.customer = nil;
        }
    }

//@non-generated-start[modifyToIdentifiable-after][X]
//@non-generated-end
}


- (NSArray *)getChildViewModels
{

//@non-generated-start[getChildViewModels][X]
    NSMutableArray *result = [[NSMutableArray alloc] init];

    if (self.mVMReportDetailPanelExpensesList != nil) {
        [result addObject:self.mVMReportDetailPanelExpensesList];
    }
    return result;
//@non-generated-end
}


- (NSString *)propertyNameInParentViewModel
{
    return @"mVMReportDetailPanel";
}


/**
 * @brief update the view model with the given data loader
 * @param data loader to retrieve the information to insert in the view model
 */
- (void) updateFromDataloader:(id<MFDataLoaderProtocol>)p_dataloader inContext:(id<MFContextProtocol>)context
{

//@non-generated-start[updateFromDataloader][X]
    if (p_dataloader == nil) {
        [self updateFromIdentifiable:nil];
    } else if ([[p_dataloader class] isSubclassOfClass:[MMyExpensesScreenDetailLoader class]]) {
        MMyExpensesScreenDetailLoader *oMMyExpensesScreenDetailLoader = (MMyExpensesScreenDetailLoader *) p_dataloader;
        MViewModelCreator *viewModelCreator = [[MFApplication getInstance] getBeanWithKey:BEAN_KEY_VIEW_MODEL_CREATOR];


        [viewModelCreator updateMVMReportDetailPanel:[oMMyExpensesScreenDetailLoader getLoadedData:context] withLstMCustomer:[
             oMMyExpensesScreenDetailLoader getListCustomer:context] withLstMExpenseType:[oMMyExpensesScreenDetailLoader getListType:context
         ]];
    }
    //@non-generated-end
}


/**
 * @brief Clear this view model.
 */
- (void) clear
{
    self.id_identifier = @ - 1;
    self.date = nil;
    self.reason = nil;
    self.amountTotal = @0;

    self.selectedMVMReportDetailPanelCustomerItem = nil;
    if (self.lstMVMReportDetailPanelCustomer && [self.lstMVMReportDetailPanelCustomer getChildViewModels] &&
        [self.lstMVMReportDetailPanelCustomer getChildViewModels].count > 0) {

        self.selectedMVMReportDetailPanelCustomerItem = [[self.lstMVMReportDetailPanelCustomer getChildViewModels] objectAtIndex:0];
    }
    [self clearCustomer];
    [self.mVMReportDetailPanelExpensesList clear];

//@non-generated-start[clear-after][X]
//@non-generated-end
}


/**
 * @brief Clear datas associated to a MCustomer.
 */
- (void) clearCustomer
{
    self.selectedMVMReportDetailPanelCustomerItem = nil;
    [super clear];

//@non-generated-start[clear-after-Customer][X]
//@non-generated-end
}


//@non-generated-start[other-methods]

- (void)createViewModelConfiguration {
    MFViewModelConfiguration *config = [MFViewModelConfiguration configurationForViewModel:self];
    MFListenerDescriptor *propertyChangedListener = [MFListenerDescriptor listenerDescriptorForType:MFListenerEventTypeViewModelPropertyChanged
                                                                            withFormat:@"computeTotalAmount : mVMReportDetailPanelExpensesList", nil];
    [config addListenerDescriptor:propertyChangedListener];
}

- (void)computeTotalAmount {
    float total = 0.0;
    for(MVMReportDetailPanelExpensesItemCell *itemVM in self.mVMReportDetailPanelExpensesList.viewModels) {
        total += [itemVM.amount floatValue];
    }
    self.amountTotal = @(total);
}

- (NSString *)humanReadableAmount {
    return [self humanReadableAmountFromNumber:self.amountTotal];
}
- (void)setHumanReadableAmount:(NSString *)humanReadableAmount {
    self.amountTotal = [self numberFromHumanReadableAmount:humanReadableAmount];
}

//@non-generated-end

@end

