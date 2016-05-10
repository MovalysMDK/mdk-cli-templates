/**
 * Copyright (C) 2010 Sopra (support_movalys@sopra.com)
 *
 * This file is part of Movalys MDK.
 * Movalys MDK is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * Movalys MDK is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU Lesser General Public License for more details.
 * You should have received a copy of the GNU Lesser General Public License
 * along with Movalys MDK. If not, see <http://www.gnu.org/licenses/>.
 */

#import "SopraSteriaTheme.h"
#import "UIColor+SopraSteria.h"



#pragma mark - SopraSteriaTheme: Implementation

@implementation SopraSteriaTheme



#pragma mark SopraSteriaTheme implementation

- (void)applyThemeOnStatusBar {
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
}

- (void)applyThemeOnMDKUIButton:(MDKUIButton *)button {
    [button setTitleColor:[UIColor sopraSteriaTextColor] forState:UIControlStateNormal];
    
    int height = [UIScreen mainScreen].applicationFrame.size.height;
    switch (height) {
        case 460:               // iPhone 4s
            button.titleLabel.font = [UIFont boldSystemFontOfSize:14.0f];
            break;
        case 548:               // iPhone 5 / iPhone 5s / iPhone 5 SE
            button.titleLabel.font = [UIFont boldSystemFontOfSize:18.0f];
            break;
        default:                // Other
            button.titleLabel.font = [UIFont boldSystemFontOfSize:24.0f];
            break;
    }
}

- (void)applyThemeOnUIButton:(UIButton *)button {
    [button setTitleColor:[UIColor sopraSteriaTextColor] forState:UIControlStateNormal];
}

- (void)applyThemeOnMDKFixedListAddButton:(UIButton *)button {
    [button setBackgroundColor:[UIColor sopraSteriaPrimary]];
}

- (void)applyThemeOnNavigationBar:(UIViewController *)controller {
    controller.navigationController.view.backgroundColor            = [UIColor clearColor];
    controller.navigationController.navigationBar.barTintColor      = [UIColor sopraSteriaPrimary];
    controller.navigationController.navigationBar.tintColor         = [UIColor sopraSteriaWhite];
    controller.navigationController.navigationBar.translucent       = YES;
    [controller.navigationController.navigationBar setTitleTextAttributes:@{ NSForegroundColorAttributeName:[UIColor sopraSteriaWhite] }];
}

- (void)applyThemeOnMDKFloatingButton:(UIButton *)button {
    [button setBackgroundColor:[UIColor sopraSteriaPrimary]];
}

- (void)applyThemeOnMDKUITextField:(MDKTextField *)textField {
    textField.textColor = [UIColor sopraSteriaTextColor];
}

- (void)applyThemeOnMDKLabel:(MDKLabel *)label {
    label.textColor = [UIColor sopraSteriaTextColor];
}

- (void)applyThemeOnMDKUIAlertController:(MDKUIAlertController *)alertController {
    alertController.view.tintColor = [UIColor sopraSteriaPrimary];
}

@end
