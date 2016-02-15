//
//  EVADataStore.m
//  PartyMaker
//
//  Created by Admin on 15.02.16.
//  Copyright © 2016 1. All rights reserved.
//

#import "EVADataStore.h"

@implementation EVADataStore
- (void) touchSave{
    NSFileManager *filemnager = [NSFileManager defaultManager];
    NSString *documentsPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    NSString *partyFilePath = [documentsPath stringByAppendingPathComponent:@"party.plist"];
    NSString *partiesFilePAthInBundle = [[[NSBundle mainBundle]resourcePath] stringByAppendingString:@"parties.plist"];
    NSError *error = nil;
    if (![filemnager fileExistsAtPath:partyFilePath]) {
        [filemnager copyItemAtPath:partiesFilePAthInBundle toPath:partyFilePath error:&error];
    }
    NSLog(@"%s",__PRETTY_FUNCTION__);
    NSLog(@"%@", error);
    
    NSMutableArray *dataFromPlist = [NSMutableArray arrayWithContentsOfFile:partyFilePath];
    NSData* data = [NSKeyedArchiver archivedDataWithRootObject:self];
    [dataFromPlist addObject:data];
    NSArray *dataToWrite = [NSArray arrayWithArray:dataFromPlist];
    [dataToWrite writeToFile:partyFilePath atomically:YES];
}
//дописать 
@end
