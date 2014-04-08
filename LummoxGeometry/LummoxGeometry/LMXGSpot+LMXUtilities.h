//
//  LMXGSpot+LMXUtilities.h
//  LMXCommonCode
//
//  Created by Michael Busheikin on 5/29/13.
//  Copyright (c) 2013 Button Mash Games. All rights reserved.
//

#import "LMXGSpot.h"

@class LMXIntRect;

@interface LMXGSpot (LMXUtilities)

- (NSString *)pointString;

- (BOOL)isInsideRect:(LMXIntRect *)rect;

@end
