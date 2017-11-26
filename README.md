# ios-objc-sort-array-of-dictionaries
NSDictionaryの配列を指定キーでソートするサンプル(Objective-C)

```objc:
// NSDictionaryの配列
NSArray <NSDictionary *>*files = dic[@"files"];

// ソート対象のキー、昇順or降順を設定
NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"timestamp" ascending:NO];

// ソート実行
NSArray <NSDictionary *>*sortedFiles = [files sortedArrayUsingDescriptors:@[sortDescriptor]];
```
