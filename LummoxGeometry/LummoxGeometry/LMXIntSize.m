//
//  LMXIntSize.m

//
//  Created by Michael Busheikin on 5/25/13.
//  Copyright (c) 2013 Button Mash Games. All rights reserved.
//

#import "LMXIntSize.h"

@implementation LMXIntSize

#pragma mark - Factory methods

+ (LMXIntSize *)sizeWithWidth:(NSInteger)width height:(NSInteger)height {
    LMXIntSize *size = [LMXIntSize new];
    size.width = width;
    size.height = height;
    return size;
}

#pragma mark - Object methods

- (id)copyWithZone:(NSZone *)zone {
    return [LMXIntSize sizeWithWidth:self.width height:self.height];
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%@, (%d, %d)", [super description], self.width, self.height];
}

#pragma mark - Equality

- (BOOL)isEqual:(id)object {
    if (![object isKindOfClass:[LMXIntSize class]]) {
        return NO;
    }
    
    LMXIntSize *other = object;
    return (other.width == self.width && other.height == self.height);
}


@end
