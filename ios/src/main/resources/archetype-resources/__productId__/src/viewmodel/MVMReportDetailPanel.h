//
//  MVMReportDetailPanel.h
//	myexpenses
//
//  Created by Movalys MDK.
//  Copyright (c) 2012 Sopra Group. All rights reserved.
//


// Entity headers
#import "MReport.h"

// Viewmodel headers
#import "MVMReportDetailPanelCustomer.h"
#import "MVMReportDetailPanelCustomerItem.h"
#import "MVMReportDetailPanelExpensesItemCell.h"
#import "MVMReportDetailPanelExpensesList.h"

// Custom imports
//@non-generated-start[custom-imports][X]
//@non-generated-end


// Constants
//@non-generated-start[constants][X]
//@non-generated-end



@interface MVMReportDetailPanel :
//@non-generated-start[class-signature]
    MFUIBaseViewModel<MFUpdatableFromDataLoaderProtocol>
//@non-generated-end

//@non-generated-start[custom-properties][X]
//@non-generated-end

@property (nonatomic) BOOL isInitialized;

@property (nonatomic, strong) NSNumber *id_identifier;
@property (nonatomic, strong) NSDate *date;
@property (nonatomic, strong) NSString *reason;
@property (nonatomic, strong) NSNumber *amountTotal;
@property (nonatomic, strong) MVMReportDetailPanelExpensesList *mVMReportDetailPanelExpensesList;
@property (nonatomic, strong) MVMReportDetailPanelCustomerItem *selectedMVMReportDetailPanelCustomerItem;
@property (nonatomic, strong) MVMReportDetailPanelType *lstMVMReportDetailPanelType;
@property (nonatomic, strong) MVMReportDetailPanelCustomer *lstMVMReportDetailPanelCustomer;

/**
 * @brief Update the view model with the data in the given object of type MReport.
 * @param MReport entity to fill the view model. The entity can be nil and in this case clears the data in the view model.
 */
- (void) updateFromIdentifiable:(MReport *)entity;


/**
 * @brief Modify the entity MReport with the data of the viewmodel.
 * @param MReport entity to update with the view model.
 * @param context context
 */
- (void) modifyToIdentifiable:(MReport *)entity inContext:(id<MFContextProtocol>)context;
/**
 * @brief Clear this view model.
 */
- (void) clear;

//@non-generated-start[other-methods][X]
//@non-generated-end


@end

