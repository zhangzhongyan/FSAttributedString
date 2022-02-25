//
//  FSAttributedStringMaker.m
//  FSAttributedString
//
//  Created by 张忠燕 on 2020/5/26.
//  Copyright © 2020 张忠燕. All rights reserved.
//

#import "FSAttributedStringMaker.h"
#import "FSAttributedStringItemWrapper.h"
#import "FSAttributedStringItemMeta.h"

@interface FSAttributedStringMaker ()

@property (nonatomic, copy) NSMutableArray<FSAttributedStringItem *> *stringModels;

/** 段落属性 */
@property (nonatomic, strong, nullable) NSParagraphStyle *allParagrahs;

@end

@implementation FSAttributedStringMaker

#pragma mark - Public Methods

+ (NSMutableAttributedString *)makeAttributedString:(void(^)(FSAttributedStringMaker *maker))block
{
    FSAttributedStringMaker *maker = [[FSAttributedStringMaker alloc] init];
    block(maker);
    return [maker attributedString];
}


- (FSAttributedStringItem * (^)(NSString *text))append
{
    return ^id (NSString * _Nullable text) {
        FSAttributedStringPropertyModel *propertyModel = [[FSAttributedStringPropertyModel alloc] init];
        FSAttributedStringItemWrapper *wrapModel = [[FSAttributedStringItemWrapper alloc] initWithString:text propertyModel:propertyModel];
        [self.stringModels addObject:wrapModel];
        return wrapModel;
    };
}

- (FSAttributedStringItem * (^)(NSAttributedString *attrribute))appendAttribute
{
    return ^id (NSAttributedString * _Nullable attributedString) {
        FSAttributedStringItemMeta *metaModel = [[FSAttributedStringItemMeta alloc] initWithAttributedString:attributedString];
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

- (NSMutableAttributedString *)attributedString
{
    NSMutableAttributedString *items = [[NSMutableAttributedString alloc] init];
    for (FSAttributedStringItem * model in self.stringModels) {
        [items appendAttributedString:model.attributedString];
    }
    if (self.allParagrahs) {
        [items addAttribute:NSParagraphStyleAttributeName value:self.allParagrahs range:NSMakeRange(0, items.length)];
    }
    
    return items;
}

#pragma mark - property

- (NSMutableArray<FSAttributedStringItem *> *)stringModels {
    if (!_stringModels) {
        _stringModels = [NSMutableArray array];
    }
    return _stringModels;
}

@end
