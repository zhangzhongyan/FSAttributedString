//
//  FSAttributedStringMetaModel.h
//  FSAttributedString
//
//  Created by 张忠燕 on 2020/7/3.
//  Copyright © 2020 张忠燕. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FSAttributedStringProtocol.h"

NS_ASSUME_NONNULL_BEGIN

/// 字符元数据模型
@interface FSAttributedStringMetaModel : NSObject<FSAttributedStringProtocol>

/** 指定构造方法 */
- (instancetype)initWithAttributedString:(NSAttributedString *)attributedString NS_DESIGNATED_INITIALIZER;
- (instancetype)init NS_UNAVAILABLE;

@end

NS_ASSUME_NONNULL_END
