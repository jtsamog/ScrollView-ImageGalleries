//
//  ViewController.m
//  ScrollView-ImageGalleries
//
//  Created by Endeavour2 on 7/10/17.
//  Copyright © 2017 SamOg. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>
@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) UIImageView *imageView1;
@property (nonatomic, strong) UIImageView *imageView2;
@property (nonatomic, strong) UIImageView *imageView3;
@property (nonatomic, strong) UIPageControl *pageControl;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  self.scrollView.delegate = self;
  [self setupScrollViews];
  self.scrollView.pagingEnabled = YES;
  [self setupPageControl];
}



- (void)setupScrollViews {
  self.scrollView = [UIScrollView new];
  self.scrollView.translatesAutoresizingMaskIntoConstraints = NO;
  [self.view addSubview:self.scrollView];
  [self.scrollView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor].active = YES;
  [self.scrollView.topAnchor constraintEqualToAnchor:self.view.topAnchor].active = YES;
  [self.scrollView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor].active = YES;
  [self.scrollView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor].active = YES;
  self.scrollView.pagingEnabled = YES;
  
  self.imageView1 = [UIImageView new];
  self.imageView1.image = [UIImage imageNamed:@"Lighthouse-zoomed.imageset"];
  self.imageView1.translatesAutoresizingMaskIntoConstraints = NO;
  [self.scrollView addSubview:self.imageView1];
  [self.imageView1.leadingAnchor constraintEqualToAnchor:self.scrollView.leadingAnchor].active = YES;
  [self.imageView1.topAnchor constraintEqualToAnchor:self.scrollView.topAnchor].active = YES;
  [self.imageView1.bottomAnchor constraintEqualToAnchor:self.scrollView.bottomAnchor].active = YES;
  [self.imageView1.widthAnchor constraintEqualToAnchor:self.scrollView.widthAnchor].active = YES;
  [self.imageView1.heightAnchor constraintEqualToAnchor:self.view.heightAnchor].active = YES;
  
  self.imageView2 = [UIImageView new];
  self.imageView2.image = [UIImage imageNamed:@"Lighthouse-night.imageset"];
  self.imageView2.translatesAutoresizingMaskIntoConstraints = NO;
  [self.scrollView addSubview:self.imageView2];
  [self.imageView2.leadingAnchor constraintEqualToAnchor:self.imageView1.trailingAnchor].active = YES;
  [self.imageView2.topAnchor constraintEqualToAnchor:self.scrollView.topAnchor].active = YES;
  [self.imageView2.bottomAnchor constraintEqualToAnchor:self.scrollView.bottomAnchor].active = YES;
  
  [self.imageView2.heightAnchor constraintEqualToAnchor:self.view.heightAnchor].active = YES;
  
  [self.imageView2.widthAnchor constraintEqualToAnchor:self.scrollView.widthAnchor].active = YES;
  
  
  self.imageView3 = [UIImageView new];
  self.imageView3.image = [UIImage imageNamed:@"Lighthouse-in-Field.imageset"];
  self.imageView3.translatesAutoresizingMaskIntoConstraints = NO;
  [self.scrollView addSubview:self.imageView3];
  [self.imageView3.leadingAnchor constraintEqualToAnchor:self.imageView2.trailingAnchor].active = YES;
  [self.imageView3.topAnchor constraintEqualToAnchor:self.scrollView.topAnchor].active = YES;
  [self.imageView3.bottomAnchor constraintEqualToAnchor:self.scrollView.bottomAnchor].active = YES;
  
  [self.imageView3.heightAnchor constraintEqualToAnchor:self.view.heightAnchor].active = YES;
  
  [self.imageView3.widthAnchor constraintEqualToAnchor:self.scrollView.widthAnchor].active = YES;
  
  [self.imageView3.trailingAnchor constraintEqualToAnchor:self.scrollView.trailingAnchor].active = YES;
  
}

- (void)setupPageControl {
  self.pageControl = [UIPageControl new];
  [self.view addSubview:self.pageControl];
  [self.view bringSubviewToFront:self.pageControl];
  self.pageControl.backgroundColor = [UIColor blackColor];
  self.pageControl.alpha = 0.5;
  self.pageControl.numberOfPages = self.scrollView.subviews.count;
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
