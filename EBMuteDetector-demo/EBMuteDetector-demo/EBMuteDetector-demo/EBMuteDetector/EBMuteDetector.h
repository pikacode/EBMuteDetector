//
//  EBMuteSwitchDetector.h
//
//  Created by 57380422@qq.com on 6/2/13.
//  Copyright (c) 2013 57380422@qq.com. All rights reserved.
//

#import <Foundation/Foundation.h>

static NSTimeInterval EBMuteDetectorFrequency = 1;

@interface EBMuteDetector : NSObject

+(void)detectComplete:(void (^)(BOOL isMute))completionHandler;
+(void)detecting:(void (^)(BOOL isMute))runningHandler;
+(void)pause;
+(void)resume;
+(void)vibrate;

@end
