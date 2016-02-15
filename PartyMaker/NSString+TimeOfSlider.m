//
//  NSString+TimeOfSlider.m
//  PartyMaker
//
//  Created by Admin on 09.02.16.
//  Copyright © 2016 1. All rights reserved.
//

#import "NSString+TimeOfSlider.h"

@implementation NSString (TimeOfSlider)
+ (NSString*)convertAll:(NSString *)valueInMinutes{
    int allTime = [valueInMinutes intValue];
    NSString *result = @"";
    int minutes = allTime % 60;
    int hours = allTime / 60;
    NSString *hoursS = @"";
    NSString *minutesS = @"";
    minutesS = [@(minutes) stringValue];
    hoursS = [@(hours) stringValue];

    if (hours < 10) {
        hoursS = [@"0" stringByAppendingString:hoursS];
    }
    
    if (minutes < 10) {
        minutesS = [@"0" stringByAppendingString:minutesS];
    }
    
    if (hours == 0) {
        
        
        result = [NSString stringWithFormat:@"00:%@", minutesS];
        
    }
    else if (minutes == 0) {
        result = [NSString stringWithFormat:@"%@:00", hoursS];
    }
    else {
        
        
        result = [NSString stringWithFormat:@"%@:%@",hoursS, minutesS];
        
    }
      return result;
}

@end
