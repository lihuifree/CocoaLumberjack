//
//  DDLogUntility.m
//  DDZPoker
//
//  Created by Li Hui on 12-9-2.
//
//

#import "DDLogUntility.h"
#import "DDLogDefine.h"

@implementation DDLogUntility

+(void) logSocket:(NSArray *)logArray
{
    NSString *logString = @"";
    for (NSDictionary *logDic in logArray) {
        id key = [[logDic allKeys] lastObject];
        id value = [[logDic allValues] lastObject];
        //如果是数组就扔成一堆
        if ([value isKindOfClass:[NSArray class]] || [value isKindOfClass:[NSMutableArray class]])
        {
            NSString *arrStr = [NSString stringWithFormat:@"< %d > ",[value count]];
            for (id obj in value) {
                arrStr = [arrStr stringByAppendingFormat:@",%@",obj];
            }
            value = arrStr;
        }
        if (logDic == [logArray lastObject]) {
            logString = [logString stringByAppendingFormat:@"║ %@    %@ \n",key,value];
        } else
        {
            logString = [logString stringByAppendingFormat:@"║ %@    %@ \n╟-------------------------------------------------------------------------------\n",key,value];
        }
    }
    DDLogSocket(logString);
}
@end
