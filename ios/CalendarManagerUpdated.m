//
//  CalendarManager.m
//  HijriDatePickerTemplate
//
//  Created by Sanjeev Rao Lade on 25/05/20.
//

// CalendarManager.m
#import "CalendarManagerUpdated.h"
#import <React/RCTLog.h>

@implementation CalendarManagerUpdated

// To export a module named CalendarManager
RCT_EXPORT_MODULE();

// This would name the module AwesomeCalendarManager instead
// RCT_EXPORT_MODULE(AwesomeCalendarManager);

RCT_EXPORT_METHOD(addEvent:(NSString *)name location:(NSString *)location callback:(RCTResponseSenderBlock)callback)
{
  RCTLogInfo(@"Pretending to create an event %@ at %@", name, location);
  @try{
    callback(@[name, [NSString stringWithFormat:@"%@/%@", name, @"Native"]]);
  }
  @catch(NSException *exception){
    callback(@[exception.reason, [NSNull null]]);
  }
}

@end
