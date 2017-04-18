# AOPAutohideTableViewHeader

## Description

This project is inspired by UISearch which provides perfect autohide header experience in UITableView.

AOPAutohideTableViewHeader takes advantage of the feature provided by UITableView itself. Provide a common way to implement a autohide header.

## Blog Article

> [http://www.aopod.com/2017/04/18/autohide-tableheaderview/](http://www.aopod.com/2017/04/18/autohide-tableheaderview/)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

iOS 8.0 and Above

## Installation

To install AOPAutohideTableViewHeader, simply add the following line to your Podfile:

```ruby
pod "AOPAutohideTableViewHeader", :git => 'https://github.com/aopod/AOPAutohideTableViewHeader'
```

If you'd rather import individual subspec you need, add:

```ruby
pod "AOPAutohideTableViewHeader/UIView", :git => 'https://github.com/aopod/AOPAutohideTableViewHeader'
``` 

or

```ruby
pod "AOPAutohideTableViewHeader/UITableView", :git => 'https://github.com/aopod/AOPAutohideTableViewHeader'
``` 

## Subspec

### UIView

Provides class AOPAutohideTableHeaderView, contains a property `aop_autohideMode` which enables you to specifying the autohide mode.

* AOPAutohideHeaderModeDefault    = 0: Default behaviour
* AOPAutohideHeaderModeAutohide   = 1: Autohide
* AOPAutohideHeaderModeNoAutohide = 2: No autohide

### UITableView

Provides AOPAutohideHeaderTableView, support specifying auto mode through code or Interface Builder. Provides a property `aop_tableHeaderViewAutohideMode`.

* AOPAutohideHeaderModeDefault    = 0: Default behaviour
* AOPAutohideHeaderModeAutohide   = 1: Autohide
* AOPAutohideHeaderModeNoAutohide = 2: No autohide

*Involves some private APIs, MAY cause AppStore rejection.*

### Interface Builder support

Subspecs above both support Interface Builder. Assign value of property above to 0, 1, 2, can specify the corresponding autohide mode.

## Author

aopod, aopodcom@gmail.com

## License

AOPAutohideTableViewHeader is available under the MIT license. See the LICENSE file for more info.
