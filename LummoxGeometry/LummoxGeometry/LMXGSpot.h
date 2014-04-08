//
//  LMXGSpot.h

//
//  Created by Michael Busheikin on 5/25/13.
//  Copyright (c) 2013 Button Mash Games. All rights reserved.
//

#import <Foundation/Foundation.h>

#define LMXGSpotMake(rowPoint,colPoint) [LMXGSpot spotWithRow:(rowPoint) col:(colPoint)]

@interface LMXGSpot : NSObject <NSCopying>

@property (nonatomic) NSInteger col;
@property (nonatomic) NSInteger row;

+ (LMXGSpot *)spotWithRow:(NSInteger)x col:(NSInteger)y;
+ (LMXGSpot *)zeroPoint;

// Create new LMXGSpot objects.
- (LMXGSpot *)spotUp;
- (LMXGSpot *)spotDown;
- (LMXGSpot *)spotLeft;
- (LMXGSpot *)spotRight;

@end
