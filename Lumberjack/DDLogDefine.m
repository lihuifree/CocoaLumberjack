//
//  DDLogDefine.m
//  DDZPoker
//
//  Created by Li Hui on 12-8-16.
//
//

#import "DDLogDefine.h"

/*
 debug模式下打开打印
 */
#ifdef DEBUG_MODE
    int const ddLogLevel = LOG_LEVEL_INFO;
#else
    int const ddLogLevel = LOG_LEVEL_OFF;
#endif
