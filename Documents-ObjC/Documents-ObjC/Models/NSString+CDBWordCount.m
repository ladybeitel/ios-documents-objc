//
//  NSString+CDBWordCount.m
//  Documents-ObjC
//
//  Created by Ciara Beitel on 11/6/19.
//  Copyright © 2019 Ciara Beitel. All rights reserved.
//

#import "NSString+CDBWordCount.h"

@implementation NSString (CDBWordCount)

- (NSUInteger) wordCount {
    NSCharacterSet *spaces = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSArray *words = [self componentsSeparatedByCharactersInSet:spaces];
    NSIndexSet *spacesIndex = [words indexesOfObjectsPassingTest:^BOOL(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        return [obj isEqualToString:@" "];
    }];
    return [words count] -[spacesIndex count];
}

@end
