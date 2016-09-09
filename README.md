查看中文文档 [Chinese README.md](/README_CHS.md)

# EBMuteDetector

Detect iPhone is mute(silence) or not, detect once or keep detecting . 

E-mail：pikacode@qq.com



# Installation

## manual

Download and Drag & Copy `EBMuteDetector` file folder from root into you Xcode project.



# Usage

## detect once

only detect once, after calling the method, it will detect in 0.02~0.2 sec, when finished will run the `block`.

use case: if it's not mute, play a short ring.

```objc
[EBMuteDetector detectComplete:^(BOOL isMute) {
	if (isMute) {
		NSLog(@"is mute");
	}else{
		NSLog(@"is not mute");
	}
}];
```



## detect in loop

keep detecting  at intervals, then run the `block`.

use case: when playing a music, if the mute changed, pause/resume the music.

#### detect in loop

```objc
[EBMuteDetector detecting:^(BOOL isMute) {
    if (isMute) {
        NSLog(@"is mute");
    }else{
        NSLog(@"is not mute");
    }
}];
```

#### pause

```objc
[EBMuteDetector pause];
```

#### resume

```objc
[EBMuteDetector resume];
```

#### vibrate

```objc
[EBMuteDetector vibrate];
```

#### Detecto Frequency

```objc
EBMuteDetectorFrequency = 0.5; // secound, default is 1
```

*set it first，then begin the loop it will works.*



# License

EBMuteDetector is released under the MIT license. See LICENSE for details.