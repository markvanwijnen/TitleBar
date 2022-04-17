# TitleBar
An extension to SwiftUI that will include title bar behavior on SwiftUI views.


## Installation

### Manual:

Update your `Package.swift` file:

```swift
let package = Package(
  ...,

  dependencies: [
    .package(
      url: "https://github.com/markvanwijnen/TitleBar.git",
      from: "1.0.0"),

    ...
  ],

  ...
)
```

### In Xcode:

1. Go to File > Swift Packages > Add Package Depencency...
2. Enter `https://github.com/markvanwijnen/TitleBar.git` as the URL
3. Select your desired versioning constraint
4. Click Next
5. Click Finish

## Usage

Simply add `.titleBar()` as a view modifier to a view to get the title bar behavior. As of that moment the user is able to move the window of your app by dragging on that view. When the user double clicks on it, the window will either zoom or be minimized depending on its user preferences.

```swift
import SwiftUI

@main
struct TitleBarDemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .windowStyle(.hiddenTitleBar)
    }
}

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
            Rectangle()
                .fill(Color(.sRGB, red: 244.0/255.0, green: 237.0/255.0, blue: 247.0/255.0, opacity: 1.0))
                .frame(height: 28.0)
                .titleBar()
            Divider()
            Text("Hello, world!")
                .padding()
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
```

## Donate

If you have been enjoying my free Swift package, please consider showing your support by buying me a coffee through the link below. Thanks in advance!

<a href="https://www.buymeacoffee.com/markvanwijnen" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/arial-yellow.png" height="60px" alt="Buy Me A Coffee"></a>
