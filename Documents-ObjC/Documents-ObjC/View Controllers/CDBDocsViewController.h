//
//  CDBDocsViewController.h
//  Documents-ObjC
//
//  Created by Ciara Beitel on 11/6/19.
//  Copyright © 2019 Ciara Beitel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CDBDocsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *numberOfWords;
@property (weak, nonatomic) IBOutlet UITextField *titleOfDoc;
@property (weak, nonatomic) IBOutlet UITextView *document;


@end

