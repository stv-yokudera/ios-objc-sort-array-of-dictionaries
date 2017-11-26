//
//  JsonLoader.m
//  ios-objc-sort-array-of-dictionaries
//
//  Created by OkuderaYuki on 2017/11/27.
//  Copyright © 2017年 OkuderaYuki. All rights reserved.
//

#import "JsonLoader.h"

@implementation JsonLoader

- (NSDictionary *)loadWithJsonFileName:(NSString *)fileName {

    NSString *jsonPath = [NSBundle.mainBundle pathForResource:fileName ofType:@"json"];
    NSData *jsonData = [NSData dataWithContentsOfFile:jsonPath];

    return [NSJSONSerialization JSONObjectWithData:jsonData options:kNilOptions error:nil];
}
@end
