//
//  FSAttributedStringMaker.h
//  FSAttributedString
//
//  Created by 张忠燕 on 2020/5/26.
//  Copyright © 2020 张忠燕. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FSAttributedStringItem.h"

NS_ASSUME_NONNULL_BEGIN

/// 属性字符工作台
@interface FSAttributedStringMaker : NSObject

/** 便捷获取属性字符 */
+ (NSMutableAttributedString *)makeAttributedString:(void(^)(FSAttributedStringMaker *make))block;

/** 添加字符模型 */
- (FSAttributedStringItem * (^)(NSString *text))append;

/** 添加富文本字符模型 */
- (FSAttributedStringItem * (^)(NSAttributedString *attrribute))appendAttribute;

/** 设置所有段落 */
- (void (^)(NSParagraphStyle *))paragrah;

@end

NS_ASSUME_NONNULL_END
