//
//  ViewController.m
//  objectivec
//
//  Created by Joy Hsu on 4/18/17.
//  Copyright © 2017 Joy Hsu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    [button2 addTarget:self action:@selector(changeLabel:) forControlEvents:UIControlEventTouchDown];
    [button2 setTitle:@"Shit 2" forState:UIControlStateNormal];
    [button2 setTitleColor:_button1.currentTitleColor forState:UIControlStateNormal];
    button2.frame = CGRectMake(_button1.frame.origin.x, _button1.frame.origin.y + 60, _button1.frame.size.width + 10, _button1.frame.size.height);
    [self.view addSubview:button2];

    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)changeLabel:(id)sender {
    if ([_label.text isEqualToString:@"hello"]) {
        _label.text = @"bye";
    } else {
        _label.text = @"hello";
    }
}

- (IBAction)appendStrings:(id)sender {
    _label.text = [self append:@"mon" :@"days"];
}

- (NSString *)append:(NSString *)a : (NSString *)b {
    return [a stringByAppendingString:b];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
