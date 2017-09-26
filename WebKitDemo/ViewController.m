//
//  ViewController.m
//  WebKitDemo
//
//  Created by 安宁 on 2017/9/20.
//  Copyright © 2017年 安宁. All rights reserved.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>

@interface ViewController ()

@property ( nonatomic , strong ) WKWebView * webView ;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor grayColor];
    
    [self createWebView];
}

#pragma mark - 创建webview
-(void)createWebView
{
    WKWebViewConfiguration * config = [[WKWebViewConfiguration alloc]init];
    [config setProcessPool:[self getProcessPool]];
    
    _webView = [[WKWebView alloc]initWithFrame:CGRectMake(0, 64, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame)-64) configuration:config];
    _webView.backgroundColor = [UIColor greenColor];
    
    [_webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.baidu.com"] cachePolicy:NSURLRequestReloadIgnoringLocalCacheData timeoutInterval:100]];
    
    [self.view addSubview:_webView];
    
}
#pragma mark 配置进程池
//1、WKProcessPool类中没有暴露任何属性和方法，配置为同一个进程池的WebView会共享数据，例如Cookie、用户凭证等，开发者可以通过编写管理类来分配不同维度的WebView在不同进程池中。
-(WKProcessPool *)getProcessPool
{
    WKProcessPool * processPool = [[WKProcessPool alloc]init];
    return processPool ;
}

#pragma mark



@end
