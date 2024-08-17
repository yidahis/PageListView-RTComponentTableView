//
//  RTDemoItemComponent.m
//  RTComponentTableView
//
//  Created by ricky on 16/6/19.
//  Copyright © 2016年 rickytan. All rights reserved.
//

#import "RTDemoItemComponent.h"

#import "RTItemTableViewCell.h"

@implementation RTDemoItemComponent

- (instancetype)initWithTableView:(UITableView *)tableView delegate:(id<RTTableComponentDelegate>)delegate
{
    self = [super initWithTableView:tableView delegate:delegate];
    if (self) {
        self.title = @"Items";
    }
    return self;
}

- (void)registerWithTableView:(UITableView *)tableView
{
    [super registerWithTableView:tableView];

    [tableView registerClass:[RTItemTableViewCell class]
      forCellReuseIdentifier:self.cellIdentifier];
}

- (NSInteger)numberOfItems
{
    return 8;
}

- (CGFloat)heightForComponentItemAtIndex:(NSUInteger)index
{
    return UITableViewAutomaticDimension;
}

- (__kindof UITableViewCell *)cellForTableView:(UITableView *)tableView atIndexPath:(NSIndexPath *)indexPath
{
    RTItemTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier
                                                                forIndexPath:indexPath];
    cell.imageView.image = [UIImage imageNamed:[@(indexPath.row % 5 + 1) stringValue]];
    cell.textLabel.text = @"A awesome item";
    cell.detailTextLabel.text = @"some descriptions here. some descriptions here./Users/yiwanjun/Library/Developer/CoreSimulator/Devices/44FA98CE-C87F-4309-879F-AA3FC525D287/data/Containers/Bundle/Application/15D509FD-E655-4586-AAFE-8079B0C8DCDD/JXPageListView.app/JXPageListView some descriptions here.";
    return cell;
}

@end
