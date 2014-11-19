//
//  DropDownChooseProtocol.h
//  DropDownDemo
//
//  Created by 童明城 on 14-5-28.
//  Copyright (c) 2014年 童明城. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DropDownChooseDelegate <NSObject>
@optional

//刷新最新的数据
-(void)reloadLastestData;

//-(void) chooseAtSection:(NSInteger)section index:(NSInteger)index;

@end
/*
@protocol DropDownChooseDataSource <NSObject>
-(NSInteger)numberOfSections;
-(NSInteger)numberOfRowsInSection:(NSInteger)section;
-(NSString *)titleInSection:(NSInteger)section index:(NSInteger) index;
-(NSInteger)defaultShowSection:(NSInteger)section;

@end
*/


