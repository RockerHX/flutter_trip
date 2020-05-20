//
//  BaiduASRPlugin.m
//  Runner
//
//  Created by RockerHX on 2020/5/20.
//  Copyright © 2020 The Chromium Authors. All rights reserved.
//

#import "BaiduASRPlugin.h"
#import "BaiduASRSDKManager.h"

@interface BaiduASRPlugin()

@property (nonatomic, strong) BaiduASRSDKManager *manager;
@property (nonatomic, copy) FlutterResult result;

@end

@implementation BaiduASRPlugin

+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar> *)registrar {
    FlutterMethodChannel *channel = [FlutterMethodChannel methodChannelWithName:@"baidu_asr_plugin" binaryMessenger:[registrar messenger]];
    BaiduASRPlugin *plugin = [BaiduASRPlugin new];
    [registrar addMethodCallDelegate:plugin channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall *)call result:(FlutterResult)result {
    if ([call.method isEqualToString:@"start"]) {
        self.result = result;
        [self.manager start];
    } else if ([call.method isEqualToString:@"stop"]) {
        [self.manager stop];
    } else if ([call.method isEqualToString:@"cancel"]) {
        [self.manager cancel];
    } else {
        result(FlutterMethodNotImplemented);
    }
}

- (BaiduASRSDKManager *)manager {
    if (_manager == nil) {
        _manager = [BaiduASRSDKManager initWith:^(NSString *message) {
            if (self.result) {
                self.result(message);
                self.result = nil;
            }
        } failure:^(NSString *message) {
            if (self.result) {
                self.result([FlutterError errorWithCode:@"ASR failure" message:message details:nil]);
                self.result = nil;
            }
        }];
    }
    return _manager;
}

@end
