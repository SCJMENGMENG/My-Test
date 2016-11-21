//
//  SCJimage.m
//  拖动
//
//  Created by 米开朗骑骡 on 16/11/21.
//  Copyright © 2016年 米开朗骑骡. All rights reserved.
//

#import "SCJimage.h"

@implementation SCJimage

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.userInteractionEnabled = YES;
    }
    return self;
}

-(instancetype)initWithImage:(UIImage *)image
{
    self = [super initWithImage:image];
    if (self) {
        self.userInteractionEnabled = YES;
    }
    return self;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    CGPoint point = [[touches anyObject]locationInView:self];
    star = point;
    [[self superview]bringSubviewToFront:self];
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //计算位移=当前位置-起始位置
    CGPoint point=[[touches anyObject]locationInView:self];
    float dx=point.x-star.x;
    float dy=point.y-star.y;
    
    //计算移动后的view中心点
    CGPoint newcenter=CGPointMake(self.center.x+dx,self.center.y+dy);
    
    
    /*限制用户不可将视图托出屏幕*/
    float halfx=CGRectGetMidX(self.bounds);
    //x坐标左边界
    newcenter.x=MAX(halfx,newcenter.x);
    //x坐标右边界
    newcenter.x=MIN(self.superview.bounds.size.width-halfx,newcenter.x);
    
    //y坐标同理
    float halfy=CGRectGetMidY(self.bounds);
    newcenter.y=MAX(halfy,newcenter.y);
    newcenter.y=MIN(self.superview.bounds.size.height-halfy,newcenter.y);
    
    //移动view
    self.center=newcenter;
}




@end
