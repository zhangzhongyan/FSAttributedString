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
    
    [self.demoLabel1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(60.0f));
        make.left.right.equalTo(self.view);
        make.height.equalTo(@(100.0f));
    }];
    
    [self.demoLabel1 fs_makeAttributedString:^(FSAttributedStringMaker * _Nonnull make) {
        make.append(@"首个文本蓝色15号字体\n").color(UIColor.blueColor).font([UIFont systemFontOfSize:15]);
        make.append(@"第二个文本绿色16号字体\n").color(UIColor.greenColor).font([UIFont systemFontOfSize:16]);
        make.append(@"第三个文本红色17号字体\n").color(UIColor.redColor).font([UIFont systemFontOfSize:17]);
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

@end
