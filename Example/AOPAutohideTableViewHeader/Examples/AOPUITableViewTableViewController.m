//
//  AOPUITableViewTableViewController.m
//  AOPAutohideTableViewHeader
//
//  Created by aopod on 18/04/2017.
//  Copyright © 2017 aopod.com. All rights reserved.
//

#import "AOPUITableViewTableViewController.h"
//#import "AOPAutohideHeaderTableView.h"
//#import "AOPSearchBar.h"

@interface AOPUITableViewTableViewController ()

@end

@implementation AOPUITableViewTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Uncomment lines below for different cases
//    AOPSearchBar *searchBar = [[AOPSearchBar alloc] initWithFrame:CGRectMake(0, 0, 0, 200)];
//    searchBar.backgroundColor = [UIColor purpleColor];
//     [(AOPAutohideHeaderTableView *)self.tableView aop_setTableHeaderView:searchBar autohide:YES];
//    self.tableView.tableHeaderView = searchBar;
    
//    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 200)];
//    headerView.backgroundColor = [UIColor orangeColor];
//    [(AOPAutohideHeaderTableView *)self.tableView aop_setTableHeaderView:headerView autohide:NO];
//    self.tableView.tableHeaderView = headerView;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 0;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
