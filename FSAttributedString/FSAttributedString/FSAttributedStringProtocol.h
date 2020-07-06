//
//  FSAttributedStringProtocol.h
//  FSAttributedString
//
//  Created by 张忠燕 on 2020/7/3.
//  Copyright © 2020 张忠燕. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/// 富文本编辑协议
@protocol FSAttributedStringProtocol <NSObject>

/** 设置颜色 */
- (id<FSAttributedStringProtocol>(^)(UIColor * _Nullable))color;

/** 设置字体 */
- (id<FSAttributedStringProtocol>(^)(UIFont * _Nullable))font;

/** 设置基准线 */
- (id<FSAttributedStringProtocol>(^)(NSNumber * _Nullable))baselineOffset;

/** 设置下划线 */
- (id<FSAttributedStringProtocol>(^)(NSNumber * _Nullable))underlineStyle;

/** 设置段落 */
- (id<FSAttributedStringProtocol>(^)(NSParagraphStyle * _Nullable))paragraphStyle;

/// 返回富文本
- (NSAttributedString *)attributedString;

@end

NS_ASSUME_NONNULL_END
