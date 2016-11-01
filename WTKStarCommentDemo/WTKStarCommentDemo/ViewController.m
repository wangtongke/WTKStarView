//
//  ViewController.m
//  WTKStarCommentDemo
//
//  Created by 王同科 on 16/11/1.
//  Copyright © 2016年 王同科. All rights reserved.
//

#import "ViewController.h"
#import "WTKStar/WTKStarView.h"
@interface ViewController ()

@property(nonatomic,strong)WTKStarView *starView;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segment;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.textField.keyboardType = UIKeyboardTypeNumberPad;
    self.segment.selectedSegmentIndex = 0;
    self.view.backgroundColor = [UIColor grayColor];
    
    _starView = [[WTKStarView alloc]initWithFrame:CGRectMake(75 / 2.0, 100, 300, 50) starSize:CGSizeZero withStyle:WTKStarTypeFloat];
    _starView.starBlock = ^(NSString *star){
        NSLog(@"%@",star);
    };
    
    [self.view addSubview:_starView];
    
    
}

- (IBAction)setStarWithText:(id)sender {
    if (self.textField.text.length > 0)
    {
        _starView.star = [self.textField.text floatValue];
    }

}
- (IBAction)open:(id)sender {
    static BOOL isOpen = YES;
    isOpen = !isOpen;
    _starView.isTouch = isOpen;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
