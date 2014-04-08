//
//  LMXIntRect.m
//  LMXCommonCode
//
//  Created by Michael Busheikin on 8/7/13.
//  Copyright (c) 2013 Button Mash Games. All rights reserved.
//

#import "LMXIntRect.h"

#import "LMXGSpot.h"
#import "LMXIntSize.h"

@implementation LMXIntRect

+ (LMXIntRect *)intRectWithRow:(NSInteger)row col:(NSInteger)col width:(NSInteger)width height:(NSInteger)height {
    LMXIntRect *rect = [LMXIntRect new];
    
    rect.position = LMXGSpotMake(row, col);
    rect.size = LMXIntSizeMake(width, height);
    
    return rect;
}

#pragma mark - Object methods

- (id)copyWithZone:(NSZone *)zone {
    return [LMXIntRect intRectWithRow:self.position.row col:self.position.col width:self.size.width height:self.size.height];
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%@, (%d, %d), (%d, %d)", [super description], self.position.row, self.position.col, self.size.width, self.size.height];
}

#pragma mark - Equality

- (BOOL)isEqual:(id)object {
    if (![object isKindOfClass:[LMXIntRect class]]) {
        return NO;
    }
    
    LMXIntRect *other = object;
    return ([other.position isEqual:self.position] && [other.size isEqual:self.size]);
}

#pragma mark - Properties

- (NSInteger)maxRow {
    return self.position.row + self.size.height - 1;
}

- (NSInteger)maxColumn {
    return self.position.col + self.size.width - 1;
}

@end
