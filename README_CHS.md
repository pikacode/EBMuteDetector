view [English README.md](/README.md)
QQ：57380422

# EBMuteDetector
检测 iPhone 是否静音，可只检测一次，也可循环监听。

QQ：57380422


## 安装

### 手动安装

下载并`在 Xcode 中` `拖拽拷贝` 根目录中的 `EBMuteDetector` 文件夹至 Xcode 工程。



## 使用

### 单次检测

只会检测一次，在调用方法的后的 0.02~0.2 秒内检测手机静音状态，并执行 `block`。

使用场景：如果当前非静音，则播放一小段铃声。

```objc
[EBMuteDetector detectComplete:^(BOOL isMute) {
	if (isMute) {
		NSLog(@"静音");
	}else{
		NSLog(@"响铃");
	}
}];
```



### 循环检测

会不断重复检测，每隔一段时间检测一次，并执行 `block`。

使用场景：播放音乐时，如果切换了静音开关，则及时的暂停/继续播放音乐。

##### 循环检测

```objc
[EBMuteDetector detecting:^(BOOL isMute) {
    if (isMute) {
        NSLog(@"静音");
    }else{
        NSLog(@"响铃");
    }
}];
```

##### 暂停

```objc
[EBMuteDetector pause];
```

##### 继续

```objc
[EBMuteDetector resume];
```

##### 振动

```objc
[EBMuteDetector vibrate];
```

##### 检测频率

```objc
EBMuteDetectorFrequency = 0.5; // 秒
```

*先设置频率，后开启检测频率才会生效。*



# License

EBMuteDetector is released under the MIT license. See LICENSE for details.
