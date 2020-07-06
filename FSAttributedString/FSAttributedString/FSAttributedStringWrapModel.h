//
//  FSAttributedStringWrapModel.h
//  FSAttributedString
//
//  Created by 张忠燕 on 2020/7/3.
//  Copyright © 2020 张忠燕. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FSAttributedStringProtocol.h"
#import "FSAttributedStringPropertyModel.h"

NS_ASSUME_NONNULL_BEGIN

/// 字符包装模型
@interface FSAttributedStringWrapModel : NSObject<FSAttributedStringProtocol>

/** 字符 */
@property (nonatomic, copy, readonly) NSString *string;

/** 属性模型 */
@property (nonatomic, strong, readonly) FSAttributedStringPropertyModel *propertyModel;

/** 指定构造方法 */
- (instancetype)initWithString:(NSString *)string propertyModel:(FSAttributedStringPropertyModel *)propertyModel NS_DESIGNATED_INITIALIZER;
- (instancetype)init NS_UNAVAILABLE;

@end

NS_ASSUME_NONNULL_END
