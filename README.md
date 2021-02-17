# SimpleLayout

## Installation

### CocoaPods

```ruby
    pod 'SimpleLayout', :git => 'https://github.com/olegmyatlikov/SimpleLayout.git'
```

### SPM

```swift
    File -> Swift Packages -> Add Package Dependency -> https://github.com/olegmyatlikov/SimpleLayout.git
```


## Example of usage

```swift
        import SimpleLayout
        
        ...
        
        private var thirdViewHeightConstraint: NSLayoutConstraint?
        
        ...
        
        firstView.makeLayout { (make) in
            make.center.equalToSuperView()
            make.size.equalTo(CGSize(width: 100, height: 50))
        }

        secondView.makeLayout { (make) in
            make.edges.equalToSuperView()
        }

        thirdView.makeLayout { (make) in
            make.leading.equalTo(secondView.sl.leading).offset(10)
            make.trailing.equalTo(secondView.sl.trailing).offset(5)
            make.width.greateThan(50).priority(750)
            make.centerY.equalTo(view.sl.centerY).multiplier(0.8)
            
            thirdViewHeightConstraint = make.height.equalTo(100).getConstraint()
        }
        
        fourth.makeLayout { (make) in
            make.height.equalTo(50)
            make.width.equalTo(100)
            make.leading.equalTo(view.safeAreaLayoutGuide.sl.leading)
            make.leading.equalTo(view.sl.leading)
            make.top.equalToSafeArea()
            make.top.equalToSuperView().offset(20)
        }
        
        
        ...
```
