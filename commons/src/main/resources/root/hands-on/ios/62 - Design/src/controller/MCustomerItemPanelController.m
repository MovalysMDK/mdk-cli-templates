////  MCustomerItemPanelController.m//	mesnotesdefrais////  Created by Movalys MDK.//  Copyright (c) 2012 Sopra Group. All rights reserved.//#import "MFWorkspaceViewController.h"// Viewmodel headers#import "MViewModelCreator.h"// Controller headers#import "MCustomerItemPanelController.h"// Custom imports//@non-generated-start[custom-imports][X]//@non-generated-end// Constants//@non-generated-start[constants][X]//@non-generated-end@interface MCustomerItemPanelController ()//@non-generated-start[properties][X]//@non-generated-end@end@implementation MCustomerItemPanelController {            //@non-generated-start[instance-variables][X]    //@non-generated-end    }//@non-generated-start[synthesize][X]//@non-generated-end#pragma mark - initialize-(void) initialize {    [super initialize];        //@non-generated-start[initialize][X]    self.itemIdentifier = @"id_identifier";    self.showAddItemButton = YES;    //@non-generated-end}-(void) createBindingStructure {        MFTableConfiguration *tableConfiguration = [MFTableConfiguration createTableConfigurationForObjectWithBinding:self];        //@non-generated-start[createBindingStructure-table][X]    MFBindingCellDescriptor *CustomerItemPanelCellDescriptor =    [MFBindingCellDescriptor cellDescriptorWithIdentifier:@"CustomerItemPanelCell"                                           withCellHeight:@(103)                                    withCellBindingFormat:@"outlet.dateValue.binding : c.data<->vm.date", @"outlet.stateValue.binding : c.data<->vm.state", @"outlet.reasonValue.binding : c.data<->vm.reason", @"outlet.dateValue.attributes : editable=NO, dateTimeMode=0, ",     @"outlet.stateValue.attributes : editable=NO, mandatory=NO, enumClassName=MReportState, ",     @"outlet.reasonValue.attributes : editable=NO, mandatory=NO, ",     nil];    [tableConfiguration create1DTableCellWithDescriptor:CustomerItemPanelCellDescriptor];        MFBindingViewDescriptor *CustomerItemPanelSectionSectionViewDescriptor =    [MFBindingViewDescriptor viewDescriptorWithIdentifier:@"CustomerItemPanelSection"                                           withViewHeight:@(51)                                    withViewBindingFormat:@"outlet.nameValue.binding : c.data<->vm.name", @"outlet.nameValue.attributes : editable=NO, ",     nil];    [tableConfiguration create2DTableHeaderViewWithDescriptor:CustomerItemPanelSectionSectionViewDescriptor];    //@non-generated-end}-(void) doFillAction {        //@non-generated-start[doFillAction][X]    MFDataLoaderActionParameter *actionInParameter = [[MFDataLoaderActionParameter alloc] init];    [actionInParameter setDataLoaderClassName: @"MCustomerItemPanelLoader"];    [[MFApplication getInstance] launchAction:MFAction_MFGenericLoadDataAction withCaller:self withInParameter:actionInParameter];    //@non-generated-end}MFRegister_ActionListenerOnMyLaunchedActionSuccess(MFAction_MFGenericLoadDataAction, succeedLoadDataAction)- (void) succeedLoadDataAction:(id<MFContextProtocol>) context withCaller:(id)caller andResult:(id)result {    if ( caller == self){                //@non-generated-start[sucessDoFillAction][X]        [[MFApplication getInstance] launchAction:MFAction_MFUpdateVMWithDataLoaderAction withCaller:self withInParameter:@[                                                                                                                            [[MFUpdateVMInParameter alloc] initWithDataLoader:@"MCustomerItemPanelLoader" andViewModel:@"MVMListCustomerItemPanel"],                                                                                                                            ]];        //@non-generated-end    }}MFRegister_ActionListenerOnFailed(MFAction_MFGenericLoadDataAction, failLoadDataAction)- (void) failLoadDataAction:(id<MFContextProtocol>)context withCaller:(id)caller andResult:(id)result {    if ( caller == self){                //@non-generated-start[failDoFillAction][X]        //@non-generated-end    }}MFRegister_ActionListenerOnMyLaunchedActionSuccess(MFAction_MFUpdateVMWithDataLoaderAction, succeedUpdateVMAction)- (void) succeedUpdateVMAction:(id<MFContextProtocol>)context withCaller:(id)caller andResult:(id)result{    if (caller == self) {                //@non-generated-start[sucessUpdateVMAction][X]        [self refresh];        //@non-generated-end    }}-(id<MFUIBaseViewModelProtocol>) createViewModel {        //@non-generated-start[createVM][X]    MViewModelCreator *vmCreator = [[MFApplication getInstance] getBeanWithKey:BEAN_KEY_VIEW_MODEL_CREATOR];        return [vmCreator createMVMListCustomerItemPanel];    //@non-generated-end}#pragma mark - MFWorkspaceDetailColumnProtocol methods-(MFWorkspaceViewController *) containerViewController {        //@non-generated-start[containerViewController][X]    if([self.parentViewController isKindOfClass:[MFWorkspaceViewController class]]) {        return (MFWorkspaceViewController *)self.parentViewController;    }    return nil;    //@non-generated-end}//@non-generated-start[others-methods][X]//@non-generated-end@end