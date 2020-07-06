//
//  FSAttributedStringWrapModel.m
//  FSAttributedString
//
//  Created by 张忠燕 on 2020/7/3.
//  Copyright © 2020 张忠燕. All rights reserved.
//

#import "FSAttributedStringWrapModel.h"

@implementation FSAttributedStringWrapModel

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
- (id<FSAttributedStringProtocol>(^)(UIColor * _Nullable))color
{
    return ^id<FSAttributedStringProtocol> (UIColor * _Nullable color) {
        self.propertyModel.foregroundColor = color;
        return self;
    };
}

- (id<FSAttributedStringProtocol>(^)(UIFont * _Nullable))font
{
    return ^id<FSAttributedStringProtocol> (UIFont * _Nullable font) {
        self.propertyModel.font = font;
        return self;
    };
}

- (id<FSAttributedStringProtocol>(^)(NSNumber * _Nullable))baselineOffset
{
    return ^id<FSAttributedStringProtocol> (NSNumber * _Nullable baselineOffset) {
        self.propertyModel.baselineOffset = baselineOffset;
        return self;
    };
}

- (id<FSAttributedStringProtocol>(^)(NSNumber * _Nullable))underlineStyle
{
    return ^id<FSAttributedStringProtocol> (NSNumber * _Nullable underlineStyle) {
        self.propertyModel.underlineStyle = underlineStyle;
        return self;
    };
}

- (id<FSAttributedStringProtocol>(^)(NSParagraphStyle * _Nullable))paragraphStyle
{
    return ^id<FSAttributedStringProtocol> (NSParagraphStyle * _Nullable paragraphStyle) {
        self.propertyModel.paragraphStyle = paragraphStyle;
        return self;
    };
}

- (NSAttributedString *)attributedString
{
    return [[NSAttributedString alloc] initWithString:self.string attributes:self.propertyModel.attributes];
}

@end
