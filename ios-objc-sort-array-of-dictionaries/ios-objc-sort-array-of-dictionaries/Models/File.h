//
//  File.h
//  ios-objc-sort-array-of-dictionaries
//
//  Created by OkuderaYuki on 2017/11/27.
//  Copyright © 2017年 OkuderaYuki. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface File : NSObject
@property (nonatomic) NSString *fileName;
@property (nonatomic) NSString *timestamp;

- (instancetype)initWithFileName:(NSString *)name timestamp:(NSString *)timestamp;
@end
