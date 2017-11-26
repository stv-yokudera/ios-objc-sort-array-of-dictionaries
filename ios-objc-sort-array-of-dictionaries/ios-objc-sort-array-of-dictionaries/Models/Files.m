//
//  Files.m
//  ios-objc-sort-array-of-dictionaries
//
//  Created by OkuderaYuki on 2017/11/27.
//  Copyright © 2017年 OkuderaYuki. All rights reserved.
//

#import "Files.h"

@interface Files ()
@property (nonatomic, readwrite) NSMutableArray <File *> *fileArray;
@end

@implementation Files

- (instancetype)initWithDictionary:(NSDictionary *)dic {

    self = [super init];
    if (self) {
        self.fileArray = [@[] mutableCopy];
        for (NSDictionary *file in dic[@"files"]) {
            File *newFile = [[File alloc] initWithFileName:file[@"file_name"]
                                                 timestamp:file[@"timestamp"]];
            [self.fileArray addObject:newFile];
        }
    }
    return self;
}

- (NSArray <File *> *)sortByTimestampDesc {

    // ソート対象のキー
    NSString *timestampKey = @"timestamp";

    // ソート対象のキー、昇順or降順を設定
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:timestampKey ascending:NO];

    return [self.fileArray sortedArrayUsingDescriptors:@[sortDescriptor]];
}
@end
