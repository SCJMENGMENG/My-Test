//
//  SCJViewController.m
//  拖动
//
//  Created by 米开朗骑骡 on 16/11/21.
//  Copyright © 2016年 米开朗骑骡. All rights reserved.
//

#import "SCJViewController.h"
#import "SCJimage.h"

@interface SCJViewController ()

@end

@implementation SCJViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    
    SCJimage *image = [[SCJimage alloc] init];
    
    image.frame = CGRectMake(100, 100, 100, 100);
    image.backgroundColor = [UIColor blackColor];
    
    [self.view addSubview:image];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
