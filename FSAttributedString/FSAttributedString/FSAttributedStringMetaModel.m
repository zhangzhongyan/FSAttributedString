//
//  FSAttributedStringMetaModel.m
//  FSAttributedString
//
//  Created by 张忠燕 on 2020/7/3.
//  Copyright © 2020 张忠燕. All rights reserved.
//

#import "FSAttributedStringMetaModel.h"
#import "FSAttributedStringPropertyModel.h"

@interface FSAttributedStringMetaModel ()

@property (nonatomic, copy) NSMutableAttributedString *operaterString;

@end

@implementation FSAttributedStringMetaModel

#pragma mark - Initialize Methods

- (instancetype)initWithAttributedString:(NSAttributedString *)attributedString
{
    self = [super init];
    if (self) {
        _operaterString = [[NSMutableAttributedString alloc] initWithAttributedString:attributedString];
    }
    return self;
}

#pragma mark - Private Methods


- (void)setupPropertyModel
{
    
}


#pragma mark - <FSAttributedStringProtocol>

/** 设置颜色 */
- (id<FSAttributedStringProtocol>(^)(UIColor * _Nullable))color
{
    return ^id<FSAttributedStringProtocol> (UIColor * _Nullable color) {
        if (color) {
            NSRange range = NSMakeRange(0, self.attributedString.length);
            NSDictionary *attributes = [FSAttributedStringPropertyModel attributedWithForegroundColor:color];
            [self.operaterString setAttributes:attributes range:range];
        }
        return self;
    };
}

- (id<FSAttributedStringProtocol>(^)(UIFont * _Nullable))font
{
    return ^id<FSAttributedStringProtocol> (UIFont * _Nullable font) {
        if (font) {
            NSRange range = NSMakeRange(0, self.attributedString.length);
            NSDictionary *attributes = [FSAttributedStringPropertyModel attributedWithFont:font];
            [self.operaterString setAttributes:attributes range:range];
        }
        return self;
    };
}

- (id<FSAttributedStringProtocol>(^)(NSNumber * _Nullable))baselineOffset
{
    return ^id<FSAttributedStringProtocol> (NSNumber * _Nullable baselineOffset) {
        if (baselineOffset) {
            NSRange range = NSMakeRange(0, self.attributedString.length);
            NSDictionary *attributes = [FSAttributedStringPropertyModel attributedWithBaselineOffset:baselineOffset];
            [self.operaterString setAttributes:attributes range:range];
        }
        return self;
    };
}

- (id<FSAttributedStringProtocol>(^)(NSNumber * _Nullable))underlineStyle
{
    return ^id<FSAttributedStringProtocol> (NSNumber * _Nullable underlineStyle) {
        if (underlineStyle) {
            NSRange range = NSMakeRange(0, self.attributedString.length);
            NSDictionary *attributes = [FSAttributedStringPropertyModel attributedWithUnderlineStyle:underlineStyle];
            [self.operaterString setAttributes:attributes range:range];
        }
        return self;
    };
}

- (id<FSAttributedStringProtocol>(^)(NSParagraphStyle * _Nullable))paragraphStyle
{
    return ^id<FSAttributedStringProtocol> (NSParagraphStyle * _Nullable paragraphStyle) {
        if (paragraphStyle) {
            NSRange range = NSMakeRange(0, self.attributedString.length);
            NSDictionary *attributes = [FSAttributedStringPropertyModel attributedWithParagraphStyle:paragraphStyle];
            [self.operaterString setAttributes:attributes range:range];
        }
        return self;
    };
}

- (NSAttributedString *)attributedString
{
    return self.operaterString;
}


@end
