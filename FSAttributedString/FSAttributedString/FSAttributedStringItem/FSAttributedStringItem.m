//
//  FSAttributedStringItem.m
//  FSAttributedString
//
//  Created by 张忠燕 on 2020/7/6.
//  Copyright © 2020 张忠燕. All rights reserved.
//

#import "FSAttributedStringItem.h"

@implementation FSAttributedStringItem

/** 设置颜色 */
- (FSAttributedStringItem * (^)(UIColor * _Nullable))color
{
    return ^FSAttributedStringItem * (UIColor * _Nullable color) {
        return self;
    };
}

- (FSAttributedStringItem *(^)(UIFont * _Nullable))font
{
    return ^FSAttributedStringItem * (UIFont * _Nullable font) {
        return self;
    };
}

- (FSAttributedStringItem *(^)(NSNumber * _Nullable))baselineOffset
{
    return ^FSAttributedStringItem * (NSNumber * _Nullable baselineOffset) {
        return self;
    };
}

- (FSAttributedStringItem *(^)(NSNumber * _Nullable))underlineStyle
{
    return ^FSAttributedStringItem * (NSNumber * _Nullable underlineStyle) {
        return self;
    };
}

- (FSAttributedStringItem *(^)(NSParagraphStyle * _Nullable))paragraphStyle
{
    return ^FSAttributedStringItem * (NSParagraphStyle * _Nullable paragraphStyle) {
        return self;
    };
}

- (NSAttributedString *)attributedString
{
    return [[NSAttributedString alloc] initWithString:@""];
}

@end
