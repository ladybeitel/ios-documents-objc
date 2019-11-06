//
//  CDBDocumentController.m
//  Documents-ObjC
//
//  Created by Ciara Beitel on 11/6/19.
//  Copyright © 2019 Ciara Beitel. All rights reserved.
//

#import "CDBDocumentController.h"

@interface CDBDocumentController ()

// This one only pertains to the 3 CRUD methods down below
@property (nonatomic, copy) NSMutableArray *internalDocuments;

@end

@implementation CDBDocumentController

- (instancetype)init {
    self = [super init];
    if (self) {
        _internalDocuments = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void) createDocWithTitle:(NSString *)title body:(NSString *)body {
    CDBDocument *document = [[CDBDocument alloc] initWithTitle:title body:body];
    [self.internalDocuments addObject:document];
}

- (void) updateDoc:(CDBDocument *)document title:(NSString *)title body:(NSString *)body {
    document.title = title;
    document.body = body;
}

- (void) deleteDoc:(CDBDocument *)document {
    [self.internalDocuments removeObject:document];
}

// Public facing array (the one we made in the h file)
- (NSArray *)documents {
    return self.internalDocuments;
}

@end
