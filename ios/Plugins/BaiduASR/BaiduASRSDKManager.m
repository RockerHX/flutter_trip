//
//  BaiduASRSDKManager.m
//  Runner
//
//  Created by RockerHX on 2020/5/20.
//  Copyright © 2020 The Chromium Authors. All rights reserved.
//

#import "BaiduASRSDKManager.h"
#import "BDSEventManager.h"
#import "BDSASRParameters.h"
#import "BDSASRDefines.h"

const NSString *API_KEY = @"Bv6OKBYxKRfDSgDanbGHpEM2";
const NSString *SECRET_KEY = @"h14Us1etbn9rvj9obukzB26jiwAGrS7W";
const NSString *APP_ID = @"19968381";

@interface BaiduASRSDKManager() <BDSClientASRDelegate>

@property (strong, nonatomic) BDSEventManager *eventManager;
@property (copy, nonatomic) AsrCallback success;
@property (copy, nonatomic) AsrCallback failure;

@end

@implementation BaiduASRSDKManager

#pragma mark - Init Methods
+ (instancetype)initWith:(AsrCallback)success failure:(AsrCallback)failure {
    BaiduASRSDKManager *manager = [BaiduASRSDKManager new];
    manager.success = success;
    manager.failure = failure;
    return manager;
}

- (instancetype)init {
    if (self = [super init]) {
        // 创建语音识别对象
        self.eventManager = [BDSEventManager createEventManagerWithName:BDS_ASR_NAME];
        // 设置语音识别代理
        [self.eventManager setDelegate:self];
        // 参数配置：在线身份验证
        [self.eventManager setParameter:@[API_KEY, SECRET_KEY] forKey:BDS_ASR_API_SECRET_KEYS];
        //设置 APPID
        [self.eventManager setParameter:APP_ID forKey:BDS_ASR_OFFLINE_APP_CODE];
        [self configVoiceRecognitionClient];
    }
    return self;
}

#pragma mark - Methods
- (void)start {
    // 发送指令：启动识别
    [self.eventManager sendCommand:BDS_ASR_CMD_START];
}

- (void)stop {
    [self.eventManager sendCommand:BDS_ASR_CMD_STOP];
}

- (void)cancel {
    [self.eventManager sendCommand:BDS_ASR_CMD_CANCEL];
}

- (void)configVoiceRecognitionClient {
    [self.eventManager setParameter:@(NO) forKey:BDS_ASR_NEED_CACHE_AUDIO];
    [self.eventManager setParameter:nil forKey:BDS_ASR_AUDIO_FILE_PATH];
    [self.eventManager setParameter:@(NO) forKey:BDS_ASR_AUDIO_INPUT_STREAM];
    //设置DEBUG_LOG的级别
    [self.eventManager setParameter:@(EVRDebugLogLevelTrace) forKey:BDS_ASR_DEBUG_LOG_LEVEL];
    //配置API_KEY 和 SECRET_KEY 和 APP_ID
    [self.eventManager setParameter:@[API_KEY, SECRET_KEY] forKey:BDS_ASR_API_SECRET_KEYS];
    [self.eventManager setParameter:APP_ID forKey:BDS_ASR_OFFLINE_APP_CODE];
    //配置端点检测（二选一）
//    [self configModelVAD];
    //    [self configDNNMFE];

    //    [self.eventManager setParameter:@"15361" forKey:BDS_ASR_PRODUCT_ID];
    // ---- 语义与标点 -----
    //    [self enableNLU];
    //    [self enablePunctuation];
    // ------------------------

    //---- 语音自训练平台 ----
    //    [self configSmartAsr];
}

- (void) enableNLU {
    // ---- 开启语义理解 -----
    [self.eventManager setParameter:@(YES) forKey:BDS_ASR_ENABLE_NLU];
    [self.eventManager setParameter:@"15361" forKey:BDS_ASR_PRODUCT_ID];
}

- (void) enablePunctuation {
    // ---- 开启标点输出 -----
    [self.eventManager setParameter:@(NO) forKey:BDS_ASR_DISABLE_PUNCTUATION];
    // 普通话标点
    //    [self.eventManager setParameter:@"1537" forKey:BDS_ASR_PRODUCT_ID];
    // 英文标点
    [self.eventManager setParameter:@"1737" forKey:BDS_ASR_PRODUCT_ID];
}

- (void)configModelVAD {
    NSString *modelVAD_filepath = [[NSBundle mainBundle] pathForResource:@"bds_easr_basic_model" ofType:@"dat"];
    [self.eventManager setParameter:modelVAD_filepath forKey:BDS_ASR_MODEL_VAD_DAT_FILE];
    [self.eventManager setParameter:@(YES) forKey:BDS_ASR_ENABLE_MODEL_VAD];
}

#pragma mark - BDSClientASRDelegate
- (void)VoiceRecognitionClientWorkStatus:(int)workStatus obj:(id)aObj {
    switch (workStatus) {
        case EVoiceRecognitionClientWorkStatusNewRecordData: {
            break;
        }
        case EVoiceRecognitionClientWorkStatusStartWorkIng: {
            break;
        }
        case EVoiceRecognitionClientWorkStatusStart: {
            break;
        }
        case EVoiceRecognitionClientWorkStatusEnd: {
            break;
        }
        case EVoiceRecognitionClientWorkStatusFlushData: {
            break;
        }
        case EVoiceRecognitionClientWorkStatusFinish: {
            // 语音识别成功服务器返回结果
            if ([aObj isKindOfClass:[NSDictionary class]]) {
                NSString *result = aObj[@"results_recognition"][0];
                if (self.success) {
                    self.success(result);
                }
            }
            break;
        }
        case EVoiceRecognitionClientWorkStatusMeterLevel: {
            break;
        }
        case EVoiceRecognitionClientWorkStatusCancel: {
            break;
        }
        case EVoiceRecognitionClientWorkStatusError: {
            // 识别遇到错误
            if (self.failure) {
                self.failure([((NSString *)aObj) description]);
            }
            break;
        }
        case EVoiceRecognitionClientWorkStatusLoaded: {
            break;
        }
        case EVoiceRecognitionClientWorkStatusUnLoaded: {
            break;
        }
        case EVoiceRecognitionClientWorkStatusChunkThirdData: {
            break;
        }
        case EVoiceRecognitionClientWorkStatusChunkNlu: {
            break;
        }
        case EVoiceRecognitionClientWorkStatusChunkEnd: {
            break;
        }
        case EVoiceRecognitionClientWorkStatusFeedback: {
            break;
        }
        case EVoiceRecognitionClientWorkStatusRecorderEnd: {
            break;
        }
        case EVoiceRecognitionClientWorkStatusLongSpeechEnd: {
            break;
        }
        default:
            break;
    }
}

@end
