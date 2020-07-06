//
//  FSAttributedStringMaker.m
//  FSAttributedString
//
//  Created by 张忠燕 on 2020/5/26.
//  Copyright © 2020 张忠燕. All rights reserved.
//

#import "FSAttributedStringMaker.h"
#import "FSAttributedStringWrapModel.h"
#import "FSAttributedStringMetaModel.h"

@interface FSAttributedStringMaker ()

@property (nonatomic, copy) NSMutableArray<id<FSAttributedStringProtocol>> *stringModels;

/** 段落属性 */
@property (nonatomic, strong, nullable) NSParagraphStyle *allParagrahs;

@end

@implementation FSAttributedStringMaker

#pragma mark - Public Methods

+ (NSAttributedString *)makeAttributedString:(void(^)(FSAttributedStringMaker *maker))block
{
    FSAttributedStringMaker *maker = [[FSAttributedStringMaker alloc] init];
    block(maker);
    return [maker attributedString];
}


- (id<FSAttributedStringProtocol> (^)(NSString *))append
{
    return ^id (NSString * _Nullable text) {
        FSAttributedStringPropertyModel *propertyModel = [[FSAttributedStringPropertyModel alloc] init];
        FSAttributedStringWrapModel *wrapModel = [[FSAttributedStringWrapModel alloc] initWithString:text propertyModel:propertyModel];
        [self.stringModels addObject:wrapModel];
        return wrapModel;
    };
}

- (id<FSAttributedStringProtocol> (^)(NSAttributedString *))appendAttribute
{
    return ^id (NSAttributedString * _Nullable attributedString) {
        FSAttributedStringMetaModel *metaModel = [[FSAttributedStringMetaModel alloc] initWithAttributedString:attributedString];
        [self.stringModels addObject:metaModel];
        return metaModel;
    };
}

- (void (^)(NSParagraphStyle *))paragrah
{
    return ^(NSParagraphStyle * _Nullable paragrahStyle) {
        self.allParagrahs = paragrahStyle;
    };
}

#pragma mark - Private Methods

- (NSAttributedString *)attributedString
{
    NSMutableAttributedString *items = [[NSMutableAttributedString alloc] init];
    for (id<FSAttributedStringProtocol> model in self.stringModels) {
        [items appendAttributedString:model.attributedString];
    }
    if (self.allParagrahs) {
        [items addAttribute:NSParagraphStyleAttributeName value:self.allParagrahs range:NSMakeRange(0, items.length)];
    }
    
    return items;
}

#pragma mark - property

- (NSMutableArray<id<FSAttributedStringProtocol>> *)stringModels {
    if (!_stringModels) {
        _stringModels = [NSMutableArray array];
    }
    return _stringModels;
}

@end
