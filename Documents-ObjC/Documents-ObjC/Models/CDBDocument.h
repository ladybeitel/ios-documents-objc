//
//  CDBDocument.h
//  Documents-ObjC
//
//  Created by Ciara Beitel on 11/6/19.
//  Copyright © 2019 Ciara Beitel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CDBDocument : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *body;
@property (nonatomic) NSUInteger *wordCount;

-(instancetype)initWithTitle:(NSString *)title body:(NSString *)body;

@end
