//
//  CDBDocsViewController.h
//  Documents-ObjC
//
//  Created by Ciara Beitel on 11/6/19.
//  Copyright © 2019 Ciara Beitel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CDBDocument.h"
#import "CDBDocumentController.h"

@interface CDBDocsViewController : UIViewController <UITextViewDelegate>

@property (nonatomic) CDBDocument *document;
@property (nonatomic) CDBDocumentController *documentController;

@end
