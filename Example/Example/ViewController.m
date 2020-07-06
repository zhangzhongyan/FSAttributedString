//
//  ViewController.m
//  Example
//
//  Created by 张忠燕 on 2020/5/25.
//  Copyright © 2020 张忠燕. All rights reserved.
//

#import "ViewController.h"
#import <FSAttributedString/FSAttributedString.h>
#import <Masonry/Masonry.h>

@interface ViewController ()

@property (nonatomic, strong) UILabel *demoLabel1;

@property (nonatomic, strong) UILabel *demoLabel2;

@end

@implementation ViewController

#pragma mark - Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupLayout];
}

#pragma mark - Private Methods

- (void)setupLayout
{
    [self.view addSubview:self.demoLabel1];
    [self.view addSubview:self.demoLabel2];
    
    [self.demoLabel1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(60.0f));
        make.left.right.equalTo(self.view);
        make.height.equalTo(@(100.0f));
    }];
    
    [self.demoLabel2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.demoLabel1.mas_bottom).offset(20.0f);
        make.left.right.equalTo(self.view);
        make.height.equalTo(@(100.0f));
    }];
    
    [self.demoLabel1 fs_makeAttributedString:^(FSAttributedStringMaker * _Nonnull make) {
        make.append(@"首一个文本蓝色15号字体\n").color(UIColor.blueColor).font([UIFont systemFontOfSize:15]);
        make.append(@"首一个文本绿色16号字体\n").color(UIColor.greenColor).font([UIFont systemFontOfSize:16]);
        make.append(@"首一个文本红色17号字体\n").color(UIColor.redColor).font([UIFont systemFontOfSize:17]);
    }];
    
    NSAttributedString *attributedString = [FSAttributedStringMaker makeAttributedString:^(FSAttributedStringMaker * _Nonnull make) {
        make.append(@"第二个文本蓝色15号字体\n").color(UIColor.blueColor).font([UIFont systemFontOfSize:15]);
        make.append(@"第二个文本绿色16号字体\n").color(UIColor.greenColor).font([UIFont systemFontOfSize:16]);
        make.append(@"第二个文本红色17号字体\n").color(UIColor.redColor).font([UIFont systemFontOfSize:17]);
    }];
    
    [self.demoLabel2 fs_makeAttributedString:^(FSAttributedStringMaker * _Nonnull make) {
        make.appendAttribute(attributedString);
        make.append(@"第二个个文本黑色17号字体\n").color(UIColor.blackColor).font([UIFont systemFontOfSize:17]);
    }];
    
}

#pragma mark - property

- (UILabel *)demoLabel1 {
    if (!_demoLabel1) {
        _demoLabel1 = [[UILabel alloc] init];
        _demoLabel1.backgroundColor = UIColor.clearColor;
        _demoLabel1.numberOfLines = 0.0f;
        _demoLabel1.textAlignment = NSTextAlignmentCenter;
    }
    return _demoLabel1;
}

- (UILabel *)demoLabel2 {
    if (!_demoLabel2) {
        _demoLabel2 = [[UILabel alloc] init];
        _demoLabel2.backgroundColor = UIColor.clearColor;
        _demoLabel2.numberOfLines = 0.0f;
        _demoLabel2.textAlignment = NSTextAlignmentCenter;
    }
    return _demoLabel2;
}

@end
