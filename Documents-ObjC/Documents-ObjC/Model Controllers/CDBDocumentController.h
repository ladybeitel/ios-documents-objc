//
//  CDBDocumentController.h
//  Documents-ObjC
//
//  Created by Ciara Beitel on 11/6/19.
//  Copyright © 2019 Ciara Beitel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CDBDocument.h"

@interface CDBDocumentController : NSObject

@property (nonatomic, copy) NSArray *documents;

- (void) createDocWithTitle:(NSString *)title body:(NSString *)body;
- (void) updateDoc:(CDBDocument *)document title:(NSString *)title body:(NSString *)body;
- (void) deleteDoc:(CDBDocument *)document;

@end


