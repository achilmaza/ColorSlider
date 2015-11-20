//
//  Color.m
//  ColorSlider
//
//  Created by Angie Chilmaza on 11/20/15.
//  Copyright © 2015 Angie Chilmaza. All rights reserved.
//

#import "Color.h"

@implementation Color

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.red   = 255.0;
        self.green = 255.0;
        self.blue  = 255.0;
        self.alpha = 1.0;
    }
    return self;
}

@end
