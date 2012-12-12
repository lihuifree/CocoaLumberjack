//
//  DDLogUntility.h
//  DDZPoker
//
//  Created by Li Hui on 12-9-2.
//
//  这里包含了一些对打印格式的工具类扩展
//  目前包括了socket打印格式

#import <Foundation/Foundation.h>
#define number(v)                  [NSNumber numberWithInt:v]

#ifdef DEBUG_MODE
#else
#define dispatch_async(...) 
#endif


@interface DDLogUntility : NSObject
+(void) logSocket:(NSArray *)logArray;

@end
