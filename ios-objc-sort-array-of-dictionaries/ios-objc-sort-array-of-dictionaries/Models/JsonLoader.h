//
//  JsonLoader.h
//  ios-objc-sort-array-of-dictionaries
//
//  Created by OkuderaYuki on 2017/11/27.
//  Copyright © 2017年 OkuderaYuki. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JsonLoader : NSObject

/**
 ファイル名を指定してローカルのJSONファイルを読み込む

 @param fileName (NSString *) ファイル名
 @return (NSDictionary *) 読み込んだデータ
 */
- (NSDictionary *)loadWithJsonFileName:(NSString *)fileName;
@end
