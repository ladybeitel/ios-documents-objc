//
//  CDBDocsViewController.m
//  Documents-ObjC
//
//  Created by Ciara Beitel on 11/6/19.
//  Copyright © 2019 Ciara Beitel. All rights reserved.
//

#import "CDBDocsViewController.h"

@interface CDBDocsViewController ()

@property (weak, nonatomic) IBOutlet UILabel *wordCountLabel;
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *bodyTextView;

@end

@implementation CDBDocsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)saveDocButtonTapped:(id)sender {
}

@end
