//
//  BaiduASRSDKManager.h
//  Runner
//
//  Created by RockerHX on 2020/5/20.
//  Copyright © 2020 The Chromium Authors. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^AsrCallback)(NSString *message);

@interface BaiduASRSDKManager : NSObject

+ (instancetype)initWith:(AsrCallback)success failure:(AsrCallback)failure;

- (void)start;
- (void)stop;
- (void)cancel;

@end
