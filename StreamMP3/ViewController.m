//
//  ViewController.m
//  StreamMP3
//
//  Created by 鈴木 宏昌 on 2013/08/26.
//  Copyright (c) 2013年 鈴木 宏昌. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//Playボタンを押したときの処理
-(IBAction)Play:(id)sender{
    
    //ストリーミング元のURLを設定
    NSString *stream = @"http://www.geekylemon.com/JungleBed.mp3";
    
    //stringをURLに変換する
    NSURL *url = [NSURL URLWithString:stream];
    
    //URLを受け取り、リクエストを投げる
    NSURLRequest *urlrequest = [NSURLRequest requestWithURL:url];
    
    //リクエストをWebViewでloadする
    [Webview loadRequest:urlrequest];
}

@end
