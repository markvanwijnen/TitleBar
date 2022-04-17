// Copyright © 2022 Mark van Wijnen
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the “Software”), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import SwiftUI

public extension View {
    func titleBar() -> some View {
        self.overlay(TitleBarNSViewRepresentable())
    }
}

fileprivate struct TitleBarNSViewRepresentable: NSViewRepresentable {
    func makeNSView(context: Context) -> NSView { return TitleBarNSView() }
    func updateNSView(_ nsView: NSView, context: Context) {}
}

fileprivate class TitleBarNSView: NSView {
    override public func mouseDown(with event: NSEvent) {
        if event.clickCount == 1 {
            NSApp?.mainWindow?.performDrag(with: event)
        } else {
            switch UserDefaults.standard.string(forKey: "AppleActionOnDoubleClick") {
            case "Minimize":
                window?.performMiniaturize(nil)
            case "Maximize":
                window?.performZoom(nil)
            default:
                ()
            }
        }
    }
}
