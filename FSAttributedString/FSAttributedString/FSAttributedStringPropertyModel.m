//
//  FSAttributedStringPropertyModel.m
//  FSAttributedString
//
//  Created by 张忠燕 on 2020/5/26.
//  Copyright © 2020 张忠燕. All rights reserved.
//

#import "FSAttributedStringPropertyModel.h"

@implementation FSAttributedStringPropertyModel

#pragma mark - Initialize Methods

- (instancetype)initWithForegroundColor:(nullable UIColor *)foregroundColor font:(nullable UIFont *)font baselineOffset:(nullable NSNumber *)baselineOffset paragraphStyle:(nullable NSParagraphStyle *)style underline:(nullable NSNumber *)underline link:(nullable NSURL *)link
{
    self = [super init];
    if (self) {
        _baselineOffset = baselineOffset.copy;
        _foregroundColor = foregroundColor.copy;
        _font = font.copy;
        _paragraphStyle = style.copy;
        _underlineStyle = underline.copy;
        _link = link.copy;
    }
    return self;
}

#pragma mark - Public Methods

+ (NSDictionary *)attributedWithForegroundColor:(nullable UIColor *)color
{
    if (color) {
        return @{NSForegroundColorAttributeName: color};
    } else {
        return @{};
    }
}

+ (NSDictionary *)attributedWithFont:(nullable UIFont *)font
{
    if (font) {
        return @{NSFontAttributeName: font};
    } else {
        return @{};
    }
}

+ (NSDictionary *)attributedWithBaselineOffset:(nullable NSNumber *)baselineOffset
{
    if (baselineOffset) {
        return @{NSBaselineOffsetAttributeName: baselineOffset};
    } else {
        return @{};
    }
}


+ (NSDictionary *)attributedWithParagraphStyle:(nullable NSParagraphStyle *)paragraphStyle
{
    if (paragraphStyle) {
        return @{NSParagraphStyleAttributeName: paragraphStyle};
    } else {
        return @{};
    }
}

+ (NSDictionary *)attributedWithUnderlineStyle:(nullable NSNumber *)underlineStyle
{
    if (underlineStyle) {
        return @{NSUnderlineStyleAttributeName: underlineStyle};
    } else {
        return @{};
    }
}

+ (NSDictionary *)attributedWithLink:(nullable NSURL *)link
{
    if (link) {
        return @{NSLinkAttributeName: link};
    } else {
        return @{};
    }
}

- (NSDictionary *)attributes
{
    NSMutableDictionary *attris = [NSMutableDictionary dictionary];
    if ([self.foregroundColor isKindOfClass:UIColor.class]) {
        [attris setObject:self.foregroundColor forKey:NSForegroundColorAttributeName];
    }
    if ([self.font isKindOfClass:UIFont.class]) {
        [attris setObject:self.font forKey:NSFontAttributeName];
    }
    if ([self.baselineOffset isKindOfClass:NSNumber.class]) {
        [attris setObject:self.baselineOffset forKey:NSBaselineOffsetAttributeName];
    }
    if ([self.paragraphStyle isKindOfClass:NSParagraphStyle.class]) {
        [attris setObject:self.paragraphStyle forKey:NSParagraphStyleAttributeName];
    }
    if ([self.underlineStyle isKindOfClass:NSNumber.class]) {
        [attris setObject:self.underlineStyle forKey:NSUnderlineStyleAttributeName];
    }
    if ([self.link isKindOfClass:NSURL.class]) {
        [attris setObject:self.link forKey:NSLinkAttributeName];
    }
    return attris;
}

@end
