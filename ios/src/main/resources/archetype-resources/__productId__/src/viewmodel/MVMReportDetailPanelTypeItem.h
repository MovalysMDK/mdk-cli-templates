//
//  MVMReportDetailPanelTypeItem.h
//	myexpenses
//
//  Created by Movalys MDK.
//  Copyright (c) 2012 Sopra Group. All rights reserved.
//


// Entity headers
#import "MExpenseCategory.h"
#import "MExpenseType.h"

// Custom imports
//@non-generated-start[custom-imports][X]
//@non-generated-end


// Constants
//@non-generated-start[constants][X]
//@non-generated-end



@interface MVMReportDetailPanelTypeItem :
//@non-generated-start[class-signature]
    MFUIBaseViewModel
//@non-generated-end

//@non-generated-start[custom-properties][X]
//@non-generated-end

@property (nonatomic) BOOL isInitialized;

@property (nonatomic, strong) NSNumber *id_identifier;
@property (nonatomic, strong) NSString *desc;
@property (nonatomic) MExpenseCategory category;
@property (nonatomic, strong) NSNumber *amountMax;

/**
 * @brief Update the view model with the data in the given object of type MExpenseType.
 * @param MExpenseType entity to fill the view model. The entity can be nil and in this case clears the data in the view model.
 */
- (void) updateFromIdentifiable:(MExpenseType *)entity;


/**
 * @brief Modify the entity MExpenseType with the data of the viewmodel.
 * @param MExpenseType entity to update with the view model.
 * @param context context
 */
- (void) modifyToIdentifiable:(MExpenseType *)entity inContext:(id<MFContextProtocol>)context;
/**
 * @brief Clear this view model.
 */
- (void) clear;

//@non-generated-start[other-methods][X]
//@non-generated-end


@end

