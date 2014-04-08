//
//  LMXGSpot+LMXUtilities.m
//  LMXCommonCode
//
//  Created by Michael Busheikin on 5/29/13.
//  Copyright (c) 2013 Button Mash Games. All rights reserved.
//

#import "LMXGSpot+LMXUtilities.h"

#import "LMXIntRect.h"
#import "LMXIntSize.h"

@interface NSObject (LMXGSpot)

- (LMXGSpot *)LMXGSpot;

@end

@implementation LMXGSpot (LMXUtilities)

- (NSString *)pointString {
    return [NSString stringWithFormat:@"%zd,%zd", self.row, self.col];
}

- (BOOL)isInsideRect:(LMXIntRect *)rect {
    return (self.row >= rect.position.row && (self.row <= rect.position.row + rect.size.height - 1) &&
            self.col >= rect.position.col && (self.col <= rect.position.col + rect.size.width - 1) );
}

@end

@implementation NSObject (LMXGSpot)

- (LMXGSpot *)LMXGSpot {
    return nil;
}

@end

@implementation NSString (LMXGSpot)

- (LMXGSpot *)LMXGSpot {
    NSMutableArray *components = [[self componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@" ,"]] mutableCopy];
    [components removeObject:@""];
    if ([components count] != 2) {
        return nil;
    }
    
    NSString *component0 = [components[0] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    NSString *component1 = [components[1] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    
    if (![[NSScanner scannerWithString:component0] scanInt:NULL] ||
        ![[NSScanner scannerWithString:component1] scanInt:NULL] ) {
        return nil;
    }
    
    return LMXGSpotMake([component0 intValue], [component1 intValue]);
}

@end

@implementation NSArray (LMXGSpot)

- (LMXGSpot *)LMXGSpot {
    if ([self count] != 2 ||
        ![self[0] isKindOfClass:[NSNumber class]] ||
        ![self[1] isKindOfClass:[NSNumber class]]) {
        return nil;
    }
    
    NSInteger row = [self[0] integerValue];
    NSInteger col = [self[1] integerValue];
    
    return LMXGSpotMake(row, col);
}

@end

@implementation NSDictionary (LMXGSpot)

- (LMXGSpot *)LMXGSpot {
    if (![self[@"row"] isKindOfClass:[NSNumber class]] ||
        ![self[@"col"] isKindOfClass:[NSNumber class]]) {
        return nil;
    }
    
    NSInteger row = [self[@"row"] integerValue];
    NSInteger col = [self[@"col"] integerValue];
    
    return LMXGSpotMake(row, col);
}

@end
