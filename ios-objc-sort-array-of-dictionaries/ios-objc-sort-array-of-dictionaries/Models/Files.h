//
//  Files.h
//  ios-objc-sort-array-of-dictionaries
//
//  Created by OkuderaYuki on 2017/11/27.
//  Copyright © 2017年 OkuderaYuki. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "File.h"

@interface Files : NSObject
@property (nonatomic, readonly) NSMutableArray <File *> *fileArray;

- (instancetype)initWithDictionary:(NSDictionary *)dic;

/**
 タイムスタンプの降順でソートする

 @return ソートされた配列
 */
- (NSArray <File *> *)sortByTimestampDesc;
@end
