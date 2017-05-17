//
//  ViewController.m
//  ZZJImageZoomView
//
//  Created by JOE on 2017/5/17.
//  Copyright © 2017年 ZZJ. All rights reserved.
//

#import "ViewController.h"
#import "ZZJImageZoomView.h"

@interface ViewController ()

@property (nonatomic,strong) UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 50, 400, 300)];
    imageView.image = [UIImage imageNamed:@"one-piece.jpeg"];
    imageView.userInteractionEnabled = YES;
    [self.view addSubview:imageView];
    _imageView = imageView;
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap:)];
    [imageView addGestureRecognizer:tap];
}

- (void)tap:(UIGestureRecognizer *)gesture {
    ZZJImageZoomView *img = [[ZZJImageZoomView alloc] initWithFrame:CGRectMake(0, 0, screenWidth, screenHeight) andImageView:_imageView];
    //当前视图
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    [window addSubview:img];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
