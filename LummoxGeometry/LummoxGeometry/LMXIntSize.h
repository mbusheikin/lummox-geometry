//
//  LMXIntSize.h

//
//  Created by Michael Busheikin on 5/25/13.
//  Copyright (c) 2013 Button Mash Games. All rights reserved.
//

#import <Foundation/Foundation.h>

#define LMXIntSizeMake(widthVal,heightVal) [LMXIntSize sizeWithWidth:widthVal height:heightVal]

@interface LMXIntSize : NSObject

@property (nonatomic) NSInteger width;
@property (nonatomic) NSInteger height;

+ (LMXIntSize *)sizeWithWidth:(NSInteger)width height:(NSInteger)height;

@end
