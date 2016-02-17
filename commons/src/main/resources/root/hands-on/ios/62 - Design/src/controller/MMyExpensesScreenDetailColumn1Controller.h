////  MMyExpensesScreenDetailColumn1Controller.h//	mesnotesdefrais////  Created by Movalys MDK.//  Copyright (c) 2012 Sopra Group. All rights reserved.//#import "MFWorkspaceDetailColumnProtocol.h"
#import "MFChildSaveProtocol.h"// Custom imports//@non-generated-start[custom-imports][X]//@non-generated-end// Constants//@non-generated-start[constants][X]//@non-generated-end

@interface MMyExpensesScreenDetailColumn1Controller : //@non-generated-start[class-signature][X]MFFormViewController<MFFormViewControllerProtocol, MFChildSaveProtocol, MFWorkspaceDetailColumnProtocol>//@non-generated-end

#pragma mark - Properties

//@non-generated-start[custom-properties][X]//@non-generated-end


#pragma mark - Methods


/**
 * @brief Invoked when load data action succeed
 * @param context context
 * @param caller caller of action
 * @param result action result
 */
- (void) succeedLoadDataAction:(id<MFContextProtocol>)context withCaller:(id)caller andResult:(id)result ;

/**
 * @brief Invoked when load data action succeed failed
 * @param context context
 * @param caller caller of action
 * @param result action result
 */
- (void) failLoadDataAction:(id<MFContextProtocol>) context withCaller:(id)caller andResult:(id)result ;
//@non-generated-start[other-methods][X]//@non-generated-end

@end

