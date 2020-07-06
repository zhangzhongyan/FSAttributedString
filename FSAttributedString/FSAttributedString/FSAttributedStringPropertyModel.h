//
//  FSAttributedStringPropertyModel.h
//  FSAttributedString
//
//  Created by 张忠燕 on 2020/5/26.
//  Copyright © 2020 张忠燕. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/// 属性模型
@interface FSAttributedStringPropertyModel : NSObject

/** 字体 */
@property (nonatomic, copy, nullable) UIFont *font;

/** 前景颜色 */
@property (nonatomic, copy, nullable) UIColor *foregroundColor;

/** 基准线 */
@property (nonatomic, copy, nullable) NSNumber *baselineOffset;

/** 下划线 */
@property (nonatomic, copy, nullable) NSNumber *underlineStyle;

/** 段落 */
@property (nonatomic, copy, nullable) NSParagraphStyle *paragraphStyle;

/** 链接 */
@property (nonatomic, copy, nullable) NSURL *link;

/** 便捷构造方法 */
- (instancetype)initWithForegroundColor:(nullable UIColor *)foregroundColor font:(nullable UIFont *)font baselineOffset:(nullable NSNumber *)baselineOffset paragraphStyle:(nullable NSParagraphStyle *)style underline:(nullable NSNumber *)underline link:(nullable NSURL *)link;

/// 便捷颜色属性
/// @param color 颜色
+ (NSDictionary *)attributedWithForegroundColor:(nullable UIColor *)color;

/// 便捷字体属性
/// @param font 字体
+ (NSDictionary *)attributedWithFont:(nullable UIFont *)font;

/// 便捷基准线
/// @param baselineOffset 基准线
+ (NSDictionary *)attributedWithBaselineOffset:(nullable NSNumber *)baselineOffset;

/// 便捷段落
/// @param paragraphStyle 段落
+ (NSDictionary *)attributedWithParagraphStyle:(nullable NSParagraphStyle *)paragraphStyle;

/// 便捷下划线
/// @param underlineStyle 下划线
+ (NSDictionary *)attributedWithUnderlineStyle:(nullable NSNumber *)underlineStyle;

/// 便捷链接
/// @param link 链接
+ (NSDictionary *)attributedWithLink:(nullable NSURL *)link;

/** 返回属性 */
- (NSDictionary *)attributes;

@end

NS_ASSUME_NONNULL_END
