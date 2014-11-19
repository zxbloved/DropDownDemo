//
//  DropDownViewController.m
//  DropDownDemo
//
//  Created by 童明城 on 14-5-28.
//  Copyright (c) 2014年 童明城. All rights reserved.
//

#import "DropDownViewController.h"
#import "DropDownListView.h"

@interface DropDownViewController (){
    NSArray *chooseArray ;
}
@end

@implementation DropDownViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"下拉菜单";
    
    
    chooseArray = @[@{              NOMALKEY: @"normal.png",
                                    HEIGHTKEY:@"helight.png",
                                    TITLEKEY:@"评分从高到低",
                                    MODALTYPE:@"1",
                                    TITLEWIDTH:[NSNumber numberWithFloat:120]
                                    },
                                  @{NOMALKEY: @"normal.png",
                                    HEIGHTKEY:@"helight.png",
                                    TITLEKEY:@"最新发布",
                                    MODALTYPE:@"2",
                                    TITLEWIDTH:[NSNumber numberWithFloat:80]
                                    },
                                  @{NOMALKEY: @"normal",
                                    HEIGHTKEY:@"helight",
                                    TITLEKEY:@"筛选",
                                    MODALTYPE:@"3",
                                    TITLEWIDTH:[NSNumber numberWithFloat:60]
                                    },
                                  @{NOMALKEY: @"normal",
                                    HEIGHTKEY:@"helight",
                                    TITLEKEY:@"分类",
                                    MODALTYPE:@"4",
                                    TITLEWIDTH:[NSNumber numberWithFloat:60]
                                    },
                                  ];

    DropDownListView * dropDownView = [[DropDownListView alloc] initWithMenuFrame:CGRectMake(0,60, self.view.frame.size.width, 40) dataSource:self delegate:self arr:chooseArray];
    dropDownView.mSuperView = self.view;
    
   
    [self.view addSubview:dropDownView];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)reloadLastestData{

    NSLog(@"最新发布刷新");
}

/*
#pragma mark -- dropDownListDelegate
-(void) chooseAtSection:(NSInteger)section index:(NSInteger)index
{
    NSLog(@"童大爷选了section:%d ,index:%d",section,index);
}

#pragma mark -- dropdownList DataSource
-(NSInteger)numberOfSections
{
   return [chooseArray count];
}
-(NSInteger)numberOfRowsInSection:(NSInteger)section
{
    NSArray *arry =chooseArray[section];
    return [arry count];
}
-(NSString *)titleInSection:(NSInteger)section index:(NSInteger) index
{
    return chooseArray[section][index];
}
-(NSInteger)defaultShowSection:(NSInteger)section
{
    return 0;
}*/



@end
