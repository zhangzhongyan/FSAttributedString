# FSAttributedString

FSAttributedString是一个轻量级的字符拼接工具，它以更好的语法包装了NSAttributedString。 拥有自己的属性字符模型，通过包含关系有效避免NSRange的一致性问题，链式调用，从而使布局代码更简洁易读。暂不支持Label的链接点击。

请查看workspace工中的**Example**示例项目。 下载后，您将需要运行pod install。

#### 版本修改

|  版本   | 修改内容  |
|  ----  | ----  |
| v1.0.1  | 增加抽象协议，增加NSAttributesString |


# 示例代码

```obj-c
[self.demoLabel1 fs_makeAttributedString:^(FSAttributedStringMaker * _Nonnull make) {
	make.append(@"首个文本蓝色15号字体\n").color(UIColor.blueColor).font([UIFont systemFontOfSize:15]);
	make.append(@"第二个文本绿色16号字体\n").color(UIColor.greenColor).font([UIFont systemFontOfSize:16]);
	make.append(@"第三个文本红色17号字体\n").color(UIColor.redColor).font([UIFont systemFontOfSize:17]);
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
    
```

# 示例效果

<img src="https://github.com/zhangzhongyan/Documents/blob/master/Photos/xcode/FSAttributedString/demo.png?raw=true" width="320" height="693">



