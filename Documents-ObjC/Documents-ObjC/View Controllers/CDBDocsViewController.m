//
//  CDBDocsViewController.m
//  Documents-ObjC
//
//  Created by Ciara Beitel on 11/6/19.
//  Copyright © 2019 Ciara Beitel. All rights reserved.
//

#import "CDBDocsViewController.h"
#import "NSString+CDBWordCount.h"

@interface CDBDocsViewController ()

@property (weak, nonatomic) IBOutlet UILabel *wordCountLabel;
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *bodyTextView;

@end

@implementation CDBDocsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.bodyTextView.delegate = self;
    [self updateViews];
}

- (IBAction)saveDocButtonTapped:(id)sender {
    NSString *title = self.titleTextField.text;
    NSString *body = self.bodyTextView.text;
    if (!self.document) {
        [self.documentController createDocWithTitle:title body:body];
    } else {
        [self.documentController updateDoc:self.document title:title body:body];
    }
    [self.navigationController popViewControllerAnimated:YES];
}

- (void) updateViews {
    if (self.isViewLoaded && self.document != nil) {
        self.title = self.document.title;
        NSString *wordCountString = [NSString stringWithFormat:@"%lu words", (unsigned long) self.document.wordCount];
        self.wordCountLabel.text = wordCountString;
        self.titleTextField.text = self.document.title;
        self.bodyTextView.text = self.document.body;
    }
}

- (void)setDocument:(CDBDocument *)document {
    if (document != _document) {
        _document = document;
        [self updateViews];
    }
}

- (void)textViewDidChange:(UITextView *)textView {
    NSString *wordCountString = [NSString stringWithFormat:@"%lu words", [textView.text wordCount]];
    self.wordCountLabel.text = wordCountString;
}

@end
