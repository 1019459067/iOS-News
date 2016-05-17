//
//  HomeTableView.m
//  iOS News
//
//  Created by 肖伟华 on 16/5/17.
//  Copyright © 2016年 XWH. All rights reserved.
//

#import "HomeTableView.h"
#define UICOLOR_FROM_RGB(r,g,b,a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]

@implementation HomeTableView

- (instancetype)initWithFrame:(CGRect)frame
{
    self=[super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:UICOLOR_FROM_RGB(240,240,240,1)];
    }
    return self;
}

@end
