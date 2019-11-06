//
//  CDBDocument.m
//  Documents-ObjC
//
//  Created by Ciara Beitel on 11/6/19.
//  Copyright © 2019 Ciara Beitel. All rights reserved.
//

#import "CDBDocument.h"
#import "NSString+CDBWordCount.h"

@implementation CDBDocument

-(instancetype)initWithTitle:(NSString *)title body:(NSString *)body {
    self = [super init];
    if (self) {
        _title = title;
        _body = body;
    }
    return self;
}

- (NSUInteger *)wordCount {
    return [self.body wordCount];
}

@end
