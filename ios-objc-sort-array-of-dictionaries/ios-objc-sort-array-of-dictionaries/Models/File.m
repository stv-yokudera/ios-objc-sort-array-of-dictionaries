//
//  File.m
//  ios-objc-sort-array-of-dictionaries
//
//  Created by OkuderaYuki on 2017/11/27.
//  Copyright © 2017年 OkuderaYuki. All rights reserved.
//

#import "File.h"

@implementation File

- (instancetype)initWithFileName:(NSString *)name timestamp:(NSString *)timestamp {
    self = [super init];
    if (self) {
        self.fileName = name;
        self.timestamp = timestamp;
    }
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"fileName: %@, timestamp: %@", self.fileName, self.timestamp];
}
@end
