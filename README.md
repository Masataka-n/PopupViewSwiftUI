# PopupViewSwiftUI
This is a library that displays View in a popup.

[![Version](https://img.shields.io/cocoapods/v/PopupViewSwiftUI.svg?style=flat)](https://cocoapods.org/pods/PopupViewSwiftUI)
[![License](https://img.shields.io/cocoapods/l/PopupViewSwiftUI.svg?style=flat)](https://cocoapods.org/pods/PopupViewSwiftUI)
[![Platform](https://img.shields.io/cocoapods/p/PopupViewSwiftUI.svg?style=flat)](https://cocoapods.org/pods/PopupViewSwiftUI)

![demo](https://user-images.githubusercontent.com/14210434/67377737-16b58980-f5c1-11e9-8c8d-fdbab0dbe3eb.gif)

# Usage

## ParentView
```swift
struct ContentView: View {

    @State var isPresented: Bool = false

    var body: some View {
        VStack {
            Text("Popup View")
                .padding()
            Button("Show Popup") {
                self.isPresented.toggle()
            }
        }
        .popup(isPresented: $isPresented, animation: nil, content: {
            PopupView(isPresented: self.$isPresented)
        })
        .edgesIgnoringSafeArea(.all)
    }
}
```

## ChildView

```swift
struct PopupView: View {

    @Binding var isPresented: Bool

    var body: some View {
        VStack {
            Text("PopupView")
                .padding()
            Button("Close") {
                self.isPresented.toggle()
            }
            .padding()
        }
        .frame(width: 300, height: 300)
        .background(Color.orange)
        .cornerRadius(10)
        .padding()
    }
}

```


## Installation

PopupViewSwiftUI is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'PopupViewSwiftUI', '~> 1.0'
```


## License

PopupViewSwiftUI is available under the MIT license. See the LICENSE file for more info.
