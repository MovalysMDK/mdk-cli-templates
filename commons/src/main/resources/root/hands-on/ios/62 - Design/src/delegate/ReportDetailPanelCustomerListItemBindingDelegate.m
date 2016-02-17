////  ReportDetailPanelCustomerListItemBindingDelegate.m//	////  Created by Movalys MDK.//  Copyright (c) 2012 Sopra Group. All rights reserved.//#import "ReportDetailPanelCustomerListItemBindingDelegate.h"// Custom imports//@non-generated-start[custom-imports][X]//@non-generated-end// Constants//@non-generated-start[constants][X]//@non-generated-end@interface ReportDetailPanelCustomerListItemBindingDelegate()//@non-generated-start[class-extension][X]//@non-generated-end@end@implementation ReportDetailPanelCustomerListItemBindingDelegate {
//@non-generated-start[instance-variables][X]//@non-generated-end
}
//@non-generated-start[synthesize][X]//@non-generated-end//@non-generated-start[custom-properties][X]//@non-generated-end

-(void) createBindingStructure {
	//@non-generated-start[createBindingStructure-method][X]
		    MFPickerListConfiguration *pickerListConfiguration = [MFPickerListConfiguration createPickerListConfigurationForObjectWithBinding:self];
		    [self createListItemBindingStructure:pickerListConfiguration];
	   //@non-generated-end
}

-(void) createListItemBindingStructure:(MFPickerListConfiguration *)pickerListConfiguration {
   	//@non-generated-start[createListItemBindingStructure-method][X]
    MFBindingCellDescriptor *cellDescriptor =
    [MFBindingCellDescriptor cellDescriptorWithIdentifier:@"MyExpensesScreenCustomerListItem"
    withCellHeight:@(51)
    withCellBindingFormat:@"outlet.nameValue.binding : c.data<->vm.name", @"outlet.nameValue.attributes : editable=NO, ", 
     nil];
	   		 [pickerListConfiguration createPickerListItemWithDescriptor:cellDescriptor];
//@non-generated-end
}


@end

