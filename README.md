# AOPAutohideTableViewHeader

## Description

This project is inspired by UISearch which provides perfect autohide header experience in UITableView.

AOPAutohideTableViewHeader takes advantage of the feature provided by UITableView itself. Provide a common way to implement a autohide header.

## Blog Article

> [http://www.aopod.com/2017/04/18/autohide-tableheaderview/](http://www.aopod.com/2017/04/18/autohide-tableheaderview/)

## Preview

![AOPAutohideTableViewHeader](http://www.aopod.com/assets/post/2017/04-18-autohide-tableHeaderView.gif)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

iOS 8.0 and Above

## Installation

To install AOPAutohideTableViewHeader, simply add the following line to your Podfile:

```ruby
# Uncomment line below if target is Swift project
# use_frameworks!
pod "AOPAutohideTableViewHeader", :git => 'https://github.com/aopod/AOPAutohideTableViewHeader'
```

If you'd rather import individual subspec you need, add:

```ruby
# Uncomment line below if target is Swift project
# use_frameworks!
pod "AOPAutohideTableViewHeader/UIView", :git => 'https://github.com/aopod/AOPAutohideTableViewHeader'
``` 

or

```ruby
# Uncomment line below if target is Swift project
# use_frameworks!
pod "AOPAutohideTableViewHeader/UITableView", :git => 'https://github.com/aopod/AOPAutohideTableViewHeader'
``` 

## Subspec

### UIView

Provides class AOPAutohideTableHeaderView, contains a property `aop_autohideMode` which enables you to specifying the autohide mode.

* AOPAutohideHeaderModeDefault    = 0: Default behaviour
* AOPAutohideHeaderModeAutohide   = 1: Autohide
* AOPAutohideHeaderModeNoAutohide = 2: No autohide

*Note*: When use in Interface Builder of Swift project, you need to reset tableHeaderView in code. like:

```swift
tableView.tableHeaderView = tableView.tableHeaderView
```

### UITableView

Provides AOPAutohideHeaderTableView, support specifying auto mode through code or Interface Builder. Provides a property `aop_tableHeaderViewAutohideMode`.

* AOPAutohideHeaderModeDefault    = 0: Default behaviour
* AOPAutohideHeaderModeAutohide   = 1: Autohide
* AOPAutohideHeaderModeNoAutohide = 2: No autohide

*Involves some private APIs, MAY cause AppStore rejection.*

### Swift support

You can use this project in Swift project. Add `use_frameworks!` to your Podfile as mentioned above. When you need use one of them, just `import AOPAutohideTableViewHeader`

### Interface Builder support

Subspecs above both support Interface Builder in both Objective-C or Swift project. Assign value of property above to 0, 1, 2, can specify the corresponding autohide mode.

![Interface Builder setting](http://www.aopod.com/assets/post/2017/04-18-interface-builder-setting.png)

## Author

aopod, aopodcom@gmail.com

## License

AOPAutohideTableViewHeader is available under the MIT license. See the LICENSE file for more info.
