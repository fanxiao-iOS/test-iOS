//
//  ViewController.m
//  test
//
//  Created by 兆时代 on 2019/5/6.
//  Copyright © 2019 apple. All rights reserved.
//

#import "ViewController.h"

#import <SDWebImage/SDWebImageManager.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webview;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"hello.html" withExtension:nil];
    [self.webview loadRequest:[NSURLRequest requestWithURL:url]];
   
}

@end
