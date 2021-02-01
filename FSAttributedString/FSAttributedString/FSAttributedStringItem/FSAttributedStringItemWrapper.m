//
//  FSAttributedStringItemWrapper.m
//  FSAttributedString
//
//  Created by 张忠燕 on 2020/7/3.
//  Copyright © 2020 张忠燕. All rights reserved.
//

#import "FSAttributedStringItemWrapper.h"

@implementation FSAttributedStringItemWrapper

#pragma mark - Initialize Methods

- (instancetype)initWithString:(NSString *)string propertyModel:(FSAttributedStringPropertyModel *)propertyModel
{
    self = [super init];
    if (self) {
        _string = string.copy;
        _propertyModel = propertyModel;
    }
    return self;
}

#pragma mark - <FSAttributedStringProtocol>

/** 设置颜色 */
- (FSAttributedStringItem *(^)(UIColor * _Nullable))color
{
    return ^FSAttributedStringItem * (UIColor * _Nullable color) {
        self.propertyModel.foregroundColor = color;
        return self;
    };
}

- (FSAttributedStringItem *(^)(UIFont * _Nullable))font
{
    return ^FSAttributedStringItem * (UIFont * _Nullable font) {
        self.propertyModel.font = font;
        return self;
    };
}

- (FSAttributedStringItem *(^)(NSNumber * _Nullable))baselineOffset
{
    return ^FSAttributedStringItem * (NSNumber * _Nullable baselineOffset) {
        self.propertyModel.baselineOffset = baselineOffset;
        return self;
    };
}

- (FSAttributedStringItem *(^)(NSNumber * _Nullable))underlineStyle
{
    return ^FSAttributedStringItem * (NSNumber * _Nullable underlineStyle) {
        self.propertyModel.underlineStyle = underlineStyle;
        return self;
    };
}

- (FSAttributedStringItem *(^)(NSParagraphStyle * _Nullable))paragraphStyle
{
    return ^FSAttributedStringItem * (NSParagraphStyle * _Nullable paragraphStyle) {
        self.propertyModel.paragraphStyle = paragraphStyle;
        return self;
    };
}

- (NSAttributedString *)attributedString
{
    return [[NSAttributedString alloc] initWithString:self.string attributes:self.propertyModel.attributes];
}

@end
