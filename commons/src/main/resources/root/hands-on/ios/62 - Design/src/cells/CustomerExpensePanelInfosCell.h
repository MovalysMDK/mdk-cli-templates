//
//  CustomerExpensePanelInfosCell.h
//  mesnotesdefrais
//
//  Created by Lagarde Quentin on 09/02/2016.
//  Copyright © 2016 Sopra Consulting. All rights reserved.
//

#import <MFUI/MFUI.h>

@interface CustomerExpensePanelInfosCell : UITableViewCell
@property (weak, nonatomic) IBOutlet MDKDateTime *date;
@property (weak, nonatomic) IBOutlet MDKDoubleTextField *amount;
@property (weak, nonatomic) IBOutlet MDKTextField *reason;

@end
