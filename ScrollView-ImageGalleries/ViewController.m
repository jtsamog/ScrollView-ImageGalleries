//
//  ViewController.m
//  ScrollView-ImageGalleries
//
//  Created by Endeavour2 on 7/10/17.
//  Copyright © 2017 SamOg. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UIScrollView *sv;
@property (nonatomic, strong) UIImageView *iv1;
@property (nonatomic, strong) UIImageView *iv2;
@property (nonatomic, strong) UIImageView *iv3;
@property (nonatomic, strong) UIPageControl *pageControl;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  self.sv.delegate = self;
  [self setupScrollViews];
  self.sv.pagingEnabled = YES;
  [self setupPageControl];
}



- (void)setupScrollViews {
  self.sv = [UIScrollView new];
  self.sv.translatesAutoresizingMaskIntoConstraints = NO;
  [self.view addSubview:self.sv];
  [self.sv.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor].active = YES;
  [self.sv.topAnchor constraintEqualToAnchor:self.view.topAnchor].active = YES;
  [self.sv.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor].active = YES;
  [self.sv.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor].active = YES;
  self.sv.pagingEnabled = YES;
  
  self.iv1 = [UIImageView new];
  self.iv1.image = [UIImage imageNamed:@"Lighthouse"];
  self.iv1.translatesAutoresizingMaskIntoConstraints = NO;
  [self.sv addSubview:self.iv1];
  [self.iv1.leadingAnchor constraintEqualToAnchor:self.sv.leadingAnchor].active = YES;
  [self.iv1.topAnchor constraintEqualToAnchor:self.sv.topAnchor].active = YES;
  [self.iv1.bottomAnchor constraintEqualToAnchor:self.sv.bottomAnchor].active = YES;
  [self.iv1.widthAnchor constraintEqualToAnchor:self.sv.widthAnchor].active = YES;
  
  [self.iv1.heightAnchor constraintEqualToAnchor:self.view.heightAnchor].active = YES;
  
  self.iv2 = [UIImageView new];
  self.iv2.image = [UIImage imageNamed:@"Lighthouse-night"];
  self.iv2.translatesAutoresizingMaskIntoConstraints = NO;
  [self.sv addSubview:self.iv2];
  [self.iv2.leadingAnchor constraintEqualToAnchor:self.iv1.trailingAnchor].active = YES;
  [self.iv2.topAnchor constraintEqualToAnchor:self.sv.topAnchor].active = YES;
  [self.iv2.bottomAnchor constraintEqualToAnchor:self.sv.bottomAnchor].active = YES;
  
  [self.iv2.heightAnchor constraintEqualToAnchor:self.view.heightAnchor].active = YES;
  
  [self.iv2.widthAnchor constraintEqualToAnchor:self.sv.widthAnchor].active = YES;
  
//  [self.iv2.trailingAnchor constraintEqualToAnchor:self.sv.trailingAnchor].active = YES;
  
  
  self.iv3 = [UIImageView new];
  self.iv3.image = [UIImage imageNamed:@"Lighthouse-in-Field"];
  self.iv3.translatesAutoresizingMaskIntoConstraints = NO;
  [self.sv addSubview:self.iv3];
  [self.iv3.leadingAnchor constraintEqualToAnchor:self.iv2.trailingAnchor].active = YES;
  [self.iv3.topAnchor constraintEqualToAnchor:self.sv.topAnchor].active = YES;
  [self.iv3.bottomAnchor constraintEqualToAnchor:self.sv.bottomAnchor].active = YES;
  
  [self.iv3.heightAnchor constraintEqualToAnchor:self.view.heightAnchor].active = YES;
  
  [self.iv3.widthAnchor constraintEqualToAnchor:self.sv.widthAnchor].active = YES;
  
  [self.iv3.trailingAnchor constraintEqualToAnchor:self.sv.trailingAnchor].active = YES;
  
}

- (void)setupPageControl {
  self.pageControl = [UIPageControl new];
  [self.view addSubview:self.pageControl];
  [self.view bringSubviewToFront:self.pageControl];
  self.pageControl.backgroundColor = [UIColor blackColor];
  self.pageControl.alpha = 0.5;
  self.pageControl.numberOfPages = self.sv.subviews.count;
  CGRect frame = CGRectMake(0, self.view.bounds.size.height-50, self.view.bounds.size.width, 50.0);
  self.pageControl.frame = frame;

}



- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
  NSLog(@"%@", NSStringFromCGSize(scrollView.contentSize));
  NSLog(@"%@", NSStringFromCGPoint(scrollView.contentOffset));
}


@end
