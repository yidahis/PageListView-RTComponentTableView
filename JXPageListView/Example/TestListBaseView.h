//
//  TestListBaseView.h
//  JXCategoryView
//
//  Created by jiaxin on 2018/8/27.
//  Copyright © 2018年 jiaxin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JXPageListView.h"


@interface TestListBaseViewCell : UITableViewCell
@property (nonatomic, strong) UILabel *titleLabel;
@end


@interface TestListBaseView : UIView < JXPageListViewListDelegate>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray <NSString *> *dataSource;
@property (nonatomic, assign) BOOL isNeedHeader;
@property (nonatomic, assign) BOOL isFirstLoaded;
@end
