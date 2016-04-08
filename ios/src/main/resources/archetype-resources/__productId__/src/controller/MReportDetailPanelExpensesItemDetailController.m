//
//  MReportDetailPanelExpensesItemDetailController.m
//	myexpenses
//
//  Created by Movalys MDK.
//  Copyright (c) 2012 Sopra Group. All rights reserved.
//


// Viewmodel headers
#import "MVMReportDetailPanelExpensesItemCell.h"
#import "MViewModelCreator.h"

// Controller headers
#import "MReportDetailPanelExpensesItemDetailController.h"

// Custom imports
//@non-generated-start[custom-imports][X]
//@non-generated-end


// Constants
//@non-generated-start[constants][X]
//@non-generated-end


@interface MReportDetailPanelExpensesItemDetailController ()


//@non-generated-start[properties][X]
@property (nonatomic, strong) MVMReportDetailPanelExpensesItemCell *currentViewModel;
//@non-generated-end

@end


@implementation MReportDetailPanelExpensesItemDetailController {


//@non-generated-start[instance-variables][X]
//@non-generated-end
}


//@non-generated-start[synthesize][X]
//@non-generated-end


#pragma mark - initialize

- (void) initialize
{
    [super initialize];

//@non-generated-start[initialize][X]
//@non-generated-end
}


- (void) createBindingStructure
{

    MFTableConfiguration *tableConfiguration = [MFTableConfiguration createTableConfigurationForObjectWithBinding:self];

//@non-generated-start[createBindingStructure-table]
    //MReportDetailPanelExpensesItemDetailController
    [tableConfiguration createTableSectionWithName:@"MReportDetailPanelExpensesItemDetailController"];

    //Component binded to 'selectedMVMReportDetailPanelTypeItem' with type 'MDKPickerList'
    MFBindingCellDescriptor *MReportDetailPanelExpensesItemDetailController_MVMReportDetailPanelTypeEditCellDescriptor =
        [MFBindingCellDescriptor cellDescriptorWithIdentifier:@"MDKPickerListCell"
                                               withCellHeight:@(41)
                                        withCellBindingFormat:
         @"outlet.componentView.binding : c.data<->vm.selectedMVMReportDetailPanelTypeItem",
         @"outlet.componentView.associatedLabel : outlet.label",
         @"outlet.label.binding : c.data<-i18n.MVMReportDetailPanelType__label",
         @"outlet.componentView.attributes : selectedItemBindingDelegate=ExpensesTypeSelectedItemBindingDelegate, search=false, listItemBindingDelegate=ExpensesTypeListItemBindingDelegate, pickerValuesKey=lstMVMReportDetailPanelType, ",
         nil];
    [tableConfiguration createTableCellWithDescriptor:
     MReportDetailPanelExpensesItemDetailController_MVMReportDetailPanelTypeEditCellDescriptor];

    //Component binded to 'desc' with type 'MDKTextField'
    MFBindingCellDescriptor *MReportDetailPanelExpensesItemDetailController_descValueCellDescriptor =
        [MFBindingCellDescriptor cellDescriptorWithIdentifier:@"MDKTextFieldCell-noLabel"
                                               withCellHeight:@(51)
                                        withCellBindingFormat:@"outlet.componentView.binding : c.data<->vm.desc",
         nil];
    [tableConfiguration createTableCellWithDescriptor:MReportDetailPanelExpensesItemDetailController_descValueCellDescriptor];

    //Component binded to 'amount' with type 'MDKDoubleTextField'
    MFBindingCellDescriptor *MReportDetailPanelExpensesItemDetailController_amountValueCellDescriptor =
        [MFBindingCellDescriptor cellDescriptorWithIdentifier:@"MDKDoubleTextFieldCell-noLabel"
                                               withCellHeight:@(51)
                                        withCellBindingFormat:@"outlet.componentView.binding : c.data<->vm.humanReadableAmount",
         nil];
    [tableConfiguration createTableCellWithDescriptor:MReportDetailPanelExpensesItemDetailController_amountValueCellDescriptor];

    //Component binded to 'photo' with type 'MDKMedia'
    MFBindingCellDescriptor *MReportDetailPanelExpensesItemDetailController_photoValueCellDescriptor =
        [MFBindingCellDescriptor cellDescriptorWithIdentifier:@"MDKMediaCell-noLabel"
                                               withCellHeight:@(158)
                                        withCellBindingFormat:@"outlet.componentView.binding : c.data<->vm.photo",
         nil];
    [tableConfiguration createTableCellWithDescriptor:MReportDetailPanelExpensesItemDetailController_photoValueCellDescriptor];

    //Component binded to 'state' with type 'MDKEnumImage'
    MFBindingCellDescriptor *MReportDetailPanelExpensesItemDetailController_stateValueCellDescriptor =
        [MFBindingCellDescriptor cellDescriptorWithIdentifier:@"MDKEnumImageCell-noLabel"
                                               withCellHeight:@(70)
                                        withCellBindingFormat:@"outlet.componentView.binding : c.data<->vm.state",
         @"outlet.componentView.attributes : editable=NO, enumClassName=MExpenseState, ",
         nil];
    [tableConfiguration createTableCellWithDescriptor:MReportDetailPanelExpensesItemDetailController_stateValueCellDescriptor];
//@non-generated-end
}


- (void) doFillAction
{

//@non-generated-start[doFillAction][X]
//@non-generated-end
}


- (id<MFUIBaseViewModelProtocol>) createViewModel
{

//@non-generated-start[createVM][X]
    MViewModelCreator *vmCreator = [[MFApplication getInstance] getBeanWithKey:BEAN_KEY_VIEW_MODEL_CREATOR];

    return [vmCreator createMVMReportDetailPanelExpensesItemCell];
//@non-generated-end
}


//@non-generated-start[others-methods][X]
//@non-generated-end

@end
