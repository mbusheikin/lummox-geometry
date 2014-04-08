//
//  LMXIntRect.h
//  LMXCommonCode
//
//  Created by Michael Busheikin on 8/7/13.
//  Copyright (c) 2013 Button Mash Games. All rights reserved.
//

#import <Foundation/Foundation.h>

#define LMXIntRectMake(r,c,w,h) [LMXIntRect intRectWithRow:r col:c width:w height:h]

@class LMXGSpot, LMXIntSize;

@interface LMXIntRect : NSObject <NSCopying>

@property (nonatomic, strong) LMXGSpot *position;
@property (nonatomic, strong) LMXIntSize *size;
@property (nonatomic, readonly) NSInteger maxRow;
@property (nonatomic, readonly) NSInteger maxColumn;

+ (LMXIntRect *)intRectWithRow:(NSInteger)row col:(NSInteger)col width:(NSInteger)width height:(NSInteger)height;

@end
