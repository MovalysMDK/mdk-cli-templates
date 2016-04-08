//
//  MMyExpensesScreenDetailColumn1Controller.m
//	myexpenses
//
//  Created by Movalys MDK.
//  Copyright (c) 2012 Sopra Group. All rights reserved.
//

#import "MFWorkspaceViewController.h"

// Viewmodel headers
#import "MViewModelCreator.h"

// Controller headers
#import "MMyExpensesScreenDetailColumn1Controller.h"

// Action headers
#import "MSaveReportDetailPanelAction.h"

// Custom imports
//@non-generated-start[custom-imports][X]
//@non-generated-end


// Constants
//@non-generated-start[constants][X]
//@non-generated-end


@interface MMyExpensesScreenDetailColumn1Controller ()


//@non-generated-start[properties][X]
//@non-generated-end

@end


@implementation MMyExpensesScreenDetailColumn1Controller {


//@non-generated-start[instance-variables][X]
//@non-generated-end
}


//@non-generated-start[synthesize][X]
//@non-generated-end

@synthesize columnIndex = _columnIndex;


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
    //ReportDetailPanel
    [tableConfiguration createTableSectionWithName:@"ReportDetailPanel"];

    //Component binded to 'mVMReportDetailPanel.selectedMVMReportDetailPanelCustomerItem' with type 'MDKPickerList'
    MFBindingCellDescriptor *ReportDetailPanel_MVMReportDetailPanelCustomerEditCellDescriptor =
        [MFBindingCellDescriptor cellDescriptorWithIdentifier:@"MDKPickerListCell"
                                               withCellHeight:@(41)
                                        withCellBindingFormat:
         @"outlet.componentView.binding : c.data<->vm.mVMReportDetailPanel.selectedMVMReportDetailPanelCustomerItem",
         @"outlet.componentView.associatedLabel : outlet.label",
         @"outlet.label.binding : c.data<-i18n.reportdetailpanel__MVMReportDetailPanelCustomer__label",
         @"outlet.componentView.attributes : selectedItemBindingDelegate=ReportDetailPanelCustomerSelectedItemBindingDelegate, search=false, listItemBindingDelegate=ReportDetailPanelCustomerListItemBindingDelegate, pickerValuesKey=lstMVMReportDetailPanelCustomer, ",
         nil];
    [tableConfiguration createTableCellWithDescriptor:ReportDetailPanel_MVMReportDetailPanelCustomerEditCellDescriptor];

    //Component binded to 'mVMReportDetailPanel.date' with type 'MDKDateTime'
    MFBindingCellDescriptor *ReportDetailPanel_dateValueCellDescriptor =
        [MFBindingCellDescriptor cellDescriptorWithIdentifier:@"MDKDateTimeCell-noLabel"
                                               withCellHeight:@(51)
                                        withCellBindingFormat:@"outlet.componentView.binding : c.data<->vm.mVMReportDetailPanel.date",
         @"outlet.componentView.attributes : dateTimeMode=0, ",
         nil];
    [tableConfiguration createTableCellWithDescriptor:ReportDetailPanel_dateValueCellDescriptor];

    //Component binded to 'mVMReportDetailPanel.reason' with type 'MDKTextField'
    MFBindingCellDescriptor *ReportDetailPanel_reasonValueCellDescriptor =
        [MFBindingCellDescriptor cellDescriptorWithIdentifier:@"MDKTextFieldCell-noLabel"
                                               withCellHeight:@(51)
                                        withCellBindingFormat:@"outlet.componentView.binding : c.data<->vm.mVMReportDetailPanel.reason",
         @"outlet.componentView.attributes : mandatory=NO, ",
         nil];
    [tableConfiguration createTableCellWithDescriptor:ReportDetailPanel_reasonValueCellDescriptor];

    //Component binded to 'mVMReportDetailPanel.amountTotal' with type 'MDKDoubleTextField'
    MFBindingCellDescriptor *ReportDetailPanel_amountTotalValueCellDescriptor =
        [MFBindingCellDescriptor cellDescriptorWithIdentifier:@"MDKDoubleTextFieldCell-noLabel"
                                               withCellHeight:@(51)
                                        withCellBindingFormat:@"outlet.componentView.binding : c.data<->vm.mVMReportDetailPanel.humanReadableAmount",
         @"outlet.componentView.attributes : editable=NO, ",
         nil];
    [tableConfiguration createTableCellWithDescriptor:ReportDetailPanel_amountTotalValueCellDescriptor];

    //Component binded to 'mVMReportDetailPanel.mVMReportDetailPanelExpensesList' with type 'MDKFixedList'
    MFBindingCellDescriptor *ReportDetailPanel_mVMReportDetailPanelExpensesListEditCellDescriptor =
        [MFBindingCellDescriptor cellDescriptorWithIdentifier:@"MDKFixedListCell"
                                               withCellHeight:@(483)
                                        withCellBindingFormat:
         @"outlet.componentView.binding : c.data<->vm.mVMReportDetailPanel.mVMReportDetailPanelExpensesList",
         @"outlet.componentView.associatedLabel : outlet.label",
         @"outlet.label.binding : c.data<-i18n.reportdetailpanel__MVMReportDetailPanelExpensesList__label",
         @"outlet.componentView.attributes : mandatory=NO, canDelete=YES, canSelect=YES, dataDelegate=ReportDetailPanelExpensesView, canMove=NO, ",
         nil];
    [tableConfiguration createTableCellWithDescriptor:ReportDetailPanel_mVMReportDetailPanelExpensesListEditCellDescriptor];
//@non-generated-end
}


- (void) doFillAction
{

//@non-generated-start[doFillAction][X]
    MFDataLoaderActionParameter *actionInParameter = [[MFDataLoaderActionParameter alloc] init];
    if (self.ids != nil) {
        [actionInParameter setDataIdentifiers:self.ids];
    }else {
        [actionInParameter setDataIdentifiers:@[@1]];
    }
    [actionInParameter setDataLoaderClassName:@"MMyExpensesScreenDetailLoader"];
    [[MFApplication getInstance] launchAction:MFAction_MFGenericLoadDataAction withCaller:self withInParameter:actionInParameter];
//@non-generated-end
}


MFRegister_ActionListenerOnMyLaunchedActionSuccess(MFAction_MFGenericLoadDataAction, succeedLoadDataAction)
- (void) succeedLoadDataAction:(id<MFContextProtocol>)context withCaller:(id)caller andResult:(id)result
{
    if (caller == self) {

//@non-generated-start[sucessDoFillAction][X]

        [[MFApplication getInstance] launchAction:MFAction_MFUpdateVMWithDataLoaderAction withCaller:self withInParameter:
         [[MFUpdateVMInParameter alloc] initWithDataLoader:@"MMyExpensesScreenDetailLoader" andViewModel:@"MVMReportDetailPanel"]];
//@non-generated-end
    }
}


MFRegister_ActionListenerOnFailed(MFAction_MFGenericLoadDataAction, failLoadDataAction)
- (void) failLoadDataAction:(id<MFContextProtocol>)context withCaller:(id)caller andResult:(id)result
{
    if (caller == self) {

//@non-generated-start[failDoFillAction][X]
//@non-generated-end
    }
}


MFRegister_ActionListenerOnMyLaunchedActionSuccess(MFAction_MFUpdateVMWithDataLoaderAction, succeedUpdateVMAction)
- (void) succeedUpdateVMAction:(id<MFContextProtocol>)context withCaller:(id)caller andResult:(id)result
{
    if (caller == self) {

//@non-generated-start[sucessUpdateVMAction][X]
        [self.viewModel resetChanged];
        [self.tableView reloadData];
//@non-generated-end
    }
}


- (id<MFUIBaseViewModelProtocol>) createViewModel
{

//@non-generated-start[createVM][X]
    MViewModelCreator *vmCreator = [[MFApplication getInstance] getBeanWithKey:BEAN_KEY_VIEW_MODEL_CREATOR];
    MVMMyExpensesScreen *workspaceViewModel = [[MFApplication getInstance] getBeanWithKey:@"MVMMyExpensesScreen"];

    workspaceViewModel.mVMReportDetailPanel = [vmCreator createMVMReportDetailPanel:self];

    return workspaceViewModel;
//@non-generated-end
}


- (BOOL) usePartialViewModel
{
    return YES;
}


- (NSArray *) partialViewModelKeys
{
    return @[
        @"mVMReportDetailPanel"];
}


#pragma mark - MFWorkspaceDetailColumnProtocol methods
- (MFWorkspaceViewController *) containerViewController
{

//@non-generated-start[containerViewController][X]
    if ([self.parentViewController isKindOfClass:[MFWorkspaceViewController class]]) {
        return (MFWorkspaceViewController *)self.parentViewController;
    }
    return nil;
    //@non-generated-end
}


- (NSArray *)saveActionsNames
{

//@non-generated-start[saveActionsNames][X]
    return @[
        MFAction_MSaveReportDetailPanelAction
    ];
    //@non-generated-end
}


//@non-generated-start[others-methods][X]
//@non-generated-end

@end
