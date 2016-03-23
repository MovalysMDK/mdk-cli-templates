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

#import "UIColor+SopraSteria.h"



#pragma mark - UIColor (SopraSteria): Implementation

@implementation UIColor (SopraSteria)

+ (UIColor *)sopraSteriaPrimary {
    return [UIColor colorWithRed:211.0f/255.0f green:18.0f/255.0f blue:30.0f/255.0f alpha:1.0f];
}

+ (UIColor *)sopraSteriaTextColor {
    return [UIColor colorWithRed:28.0f/255.0f green:28.0f/255.0f blue:27.0f/255.0f alpha:1.0f];
}

+ (UIColor *)sopraSteriaWhite {
    return [UIColor colorWithRed:251.0f/255.0f green:251.0f/255.0f blue:251.0f/255.0f alpha:1.0f];
}

@end
