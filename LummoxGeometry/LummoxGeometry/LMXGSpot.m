//
//  LMXGSpot.m

//
//  Created by Michael Busheikin on 5/25/13.
//  Copyright (c) 2013 Button Mash Games. All rights reserved.
//

#import "LMXGSpot.h"

@implementation LMXGSpot

+ (LMXGSpot *)spotWithRow:(NSInteger)row col:(NSInteger)col {
    LMXGSpot *point = [LMXGSpot new];
    point.col = col;
    point.row = row;
    return point;
}

+ (LMXGSpot *)zeroPoint {
    return [LMXGSpot spotWithRow:0 col:0];
}

- (id)copyWithZone:(NSZone *)zone {
    return [LMXGSpot spotWithRow:self.row col:self.col];
}

- (BOOL)isEqual:(id)object {
    if (![object isKindOfClass:[LMXGSpot class]]) {
        return NO;
    }
    
    LMXGSpot *other = object;
    return other.col == self.col && other.row == self.row;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"(%d, %d)", self.row, self.col];
}

#pragma mark - Creating new spots

- (LMXGSpot *)spotUp {
    return LMXGSpotMake(self.row - 1, self.col);
}

- (LMXGSpot *)spotDown {
    return LMXGSpotMake(self.row + 1, self.col);
}

- (LMXGSpot *)spotLeft {
    return LMXGSpotMake(self.row, self.col - 1);
}

- (LMXGSpot *)spotRight {
    return LMXGSpotMake(self.row, self.col + 1);
}

@end
