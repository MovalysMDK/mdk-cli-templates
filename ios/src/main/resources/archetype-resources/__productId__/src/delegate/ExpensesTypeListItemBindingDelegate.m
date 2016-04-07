//
//  ExpensesTypeListItemBindingDelegate.m
//
//
//  Created by Movalys MDK.
//  Copyright (c) 2012 Sopra Group. All rights reserved.
//

#import "ExpensesTypeListItemBindingDelegate.h"

// Custom imports
//@non-generated-start[custom-imports][X]
//@non-generated-end


// Constants
//@non-generated-start[constants][X]
//@non-generated-end


@interface ExpensesTypeListItemBindingDelegate ()

//@non-generated-start[class-extension][X]
//@non-generated-end

@end

@implementation ExpensesTypeListItemBindingDelegate {


//@non-generated-start[instance-variables][X]
//@non-generated-end
}


//@non-generated-start[synthesize][X]
//@non-generated-end

//@non-generated-start[custom-properties][X]
//@non-generated-end



- (void) createBindingStructure
{

//@non-generated-start[createBindingStructure-method][X]
    MFPickerListConfiguration *pickerListConfiguration = [MFPickerListConfiguration createPickerListConfigurationForObjectWithBinding:self];
    [self createListItemBindingStructure:pickerListConfiguration];
    //@non-generated-end
}


- (void) createListItemBindingStructure:(MFPickerListConfiguration *)pickerListConfiguration
{

//@non-generated-start[createListItemBindingStructure-method][X]
    MFBindingCellDescriptor *cellDescriptor =
        [MFBindingCellDescriptor cellDescriptorWithIdentifier:@"ReportDetailPanelTypeListItem"
                                               withCellHeight:@(152)
                                        withCellBindingFormat:@"outlet.descValue.binding : c.data<->vm.desc",
         @"outlet.categoryValue.binding : c.data<->vm.category", @"outlet.amountMaxValue.binding : c.data<->vm.humanReadableAmount",
         @"outlet.descValue.attributes : editable=NO, ",
         @"outlet.categoryValue.attributes : editable=NO, enumClassName=MExpenseCategory, ",
         @"outlet.amountMaxValue.attributes : editable=NO, mandatory=NO, ",
         nil];
    [pickerListConfiguration createPickerListItemWithDescriptor:cellDescriptor];
//@non-generated-end
}


@end

