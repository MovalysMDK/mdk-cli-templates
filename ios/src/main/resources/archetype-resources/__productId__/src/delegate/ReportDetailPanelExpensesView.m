//
//  ReportDetailPanelExpensesView.m
//
//
//  Created by Movalys MDK.
//  Copyright (c) 2012 Sopra Group. All rights reserved.
//

#import "ReportDetailPanelExpensesView.h"
#import "MReportDetailPanelExpensesItemDetailController.h"

// Custom imports
//@non-generated-start[custom-imports][X]
//@non-generated-end


// Constants
//@non-generated-start[constants][X]
//@non-generated-end


@interface ReportDetailPanelExpensesView ()

//@non-generated-start[class-extension][X]
//@non-generated-end

@end

@implementation ReportDetailPanelExpensesView {


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

//@non-generated-start[init][X]
//@non-generated-end
    }
    return self;
}


- (void) createBindingStructure
{

    MFTableConfiguration *tableConfiguration = [MFTableConfiguration createTableConfigurationForObjectWithBinding:self];

//@non-generated-start[createBindingStructure-fixedlist]
    MFBindingCellDescriptor *ReportDetailPanelExpensesViewCellDescriptor =
        [MFBindingCellDescriptor cellDescriptorWithIdentifier:@"ReportDetailPanelExpensesItemCell"
                                               withCellHeight:@(442)
                                        withCellBindingFormat:
         @"outlet.selectedMVMReportDetailPanelTypeItem_descValue.binding : c.data<->vm.selectedMVMReportDetailPanelTypeItem.desc",
         @"outlet.selectedMVMReportDetailPanelTypeItem_categoryValue.binding : c.data<->vm.selectedMVMReportDetailPanelTypeItem.category",
         @"outlet.selectedMVMReportDetailPanelTypeItem_amountMaxValue.binding : c.data<->vm.selectedMVMReportDetailPanelTypeItem.humanReadableAmount",
         @"outlet.descValue.binding : c.data<->vm.desc", @"outlet.amountValue.binding : c.data<->vm.humanReadableAmount",
         @"outlet.photoValue.binding : c.data<->vm.photo", @"outlet.stateValue.binding : c.data<->vm.state",
         @"outlet.selectedMVMReportDetailPanelTypeItem_descValue.attributes : editable=NO, ",
         @"outlet.selectedMVMReportDetailPanelTypeItem_categoryValue.attributes : editable=NO, enumClassName=MExpenseCategory, ",
         @"outlet.selectedMVMReportDetailPanelTypeItem_amountMaxValue.attributes : editable=NO, mandatory=NO, ",
         @"outlet.descValue.attributes : editable=NO, ",
         @"outlet.amountValue.attributes : editable=NO, ",
         @"outlet.photoValue.attributes : editable=NO, ",
         @"outlet.stateValue.attributes : editable=NO, enumClassName=MExpenseState, ",
         nil];
    [tableConfiguration createFixedListTableCellWithDescriptor:ReportDetailPanelExpensesViewCellDescriptor];
//@non-generated-end
}


- (NSString *)itemListViewModelName
{

//@non-generated-start[itemListViewModelName][X]
    return @"MVMReportDetailPanelExpensesItemCell";
    //@non-generated-end
}


- (void)itemChangedAtIndexPath:(NSIndexPath *)indexPath
{

//@non-generated-start[itemChangedAtIndexPath][X]
//@non-generated-end
}


- (MFFormDetailViewController *) detailController
{

//@non-generated-start[detailController][X]
    MReportDetailPanelExpensesItemDetailController *detailController = [[UIStoryboard storyboardWithName:@"MyExpensesScreen" bundle:nil]
                                                                        instantiateViewControllerWithIdentifier:
                                                                        @"MReportDetailPanelExpensesItemDetailController"];
    return detailController;
    //@non-generated-end
}


/**
 * @brief method launched when user delete an item of the list defined by his indexpath
 * @param indexPath section and row of the deleted item
 */
- (void) deleteItemMethodAtIndexPath:(NSIndexPath *)indexPath
{

//@non-generated-start[deleteItemMethodAtIndexPath][X]
//@non-generated-end
}


#pragma mark - Editing

/**
 * @brief method launched when user click on the + button
 */
- (void) addItemMethod
{

//@non-generated-start[addItemMethod][X]
//@non-generated-end
}


/**
 * @brief method launched when user edit an item of the list
 * @param indexPath section and row of the deleted item
 */
- (void) editItemMethodAtIndexPath:(NSIndexPath *)indexPath
{

//@non-generated-start[editItemMethodAtIndexPath][X]
//@non-generated-end
}


//@non-generated-start[other-methods][X]
//@non-generated-end


@end
