//
//  FSAttributedStringItem.h
//  FSAttributedString
//
//  Created by 张忠燕 on 2020/7/6.
//  Copyright © 2020 张忠燕. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/// 富文本条目-抽象类
@interface FSAttributedStringItem : NSObject

/** 设置颜色 */
- (FSAttributedStringItem *(^)(UIColor * _Nullable))color;

/** 设置字体 */
- (FSAttributedStringItem *(^)(UIFont * _Nullable))font;

/** 设置基准线 */
- (FSAttributedStringItem *(^)(NSNumber * _Nullable))baselineOffset;

/** 设置下划线 */
- (FSAttributedStringItem *(^)(NSNumber * _Nullable))underlineStyle;

/** 设置段落 */
- (FSAttributedStringItem *(^)(NSParagraphStyle * _Nullable))paragraphStyle;

/// 返回富文本
- (NSAttributedString *)attributedString;

@end

NS_ASSUME_NONNULL_END
