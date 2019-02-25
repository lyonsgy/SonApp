//
//  ViewController.m
//  SonApp
//
//  Created by lyons on 2019/2/22.
//  Copyright © 2019 lyons. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.label.text = [CommonFuction getFatherMessage];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(labelTextChange:) name:APPGROUPGETNOTIFICATION object:nil];
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [[NSNotificationCenter defaultCenter] removeObserver:APPGROUPGETNOTIFICATION];
}

-(void)labelTextChange:(NSNotification *)notificaiton{
    NSLog(@"Color chagne from notification");
    NSLog(@"%@",notificaiton.object);
    self.label.text = notificaiton.object;
}
@end
