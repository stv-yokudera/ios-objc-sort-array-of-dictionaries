//
//  ViewController.m
//  ios-objc-sort-array-of-dictionaries
//
//  Created by OkuderaYuki on 2017/11/27.
//  Copyright © 2017年 OkuderaYuki. All rights reserved.
//

#import "ViewController.h"
#import "JsonLoader.h"
#import "Files.h"

@interface ViewController ()
@property (nonatomic) JsonLoader *jsonLoader;
@property (nonatomic) Files *files;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.jsonLoader = [JsonLoader new];

    // demo.jsonを読み込む
    NSDictionary *filesDic = [self.jsonLoader loadWithJsonFileName:@"demo"];

    self.files = [[Files alloc] initWithDictionary:filesDic];
    NSLog(@"ソート前: %@", self.files.fileArray);

    NSArray <File *> *sortedArray = [self.files sortByTimestampDesc];
    NSLog(@"ソート後: %@", sortedArray);
}

@end
