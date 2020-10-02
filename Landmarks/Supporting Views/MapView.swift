/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view that hosts an `MKMapView`.
*/

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        WKWebView(frame: .zero)
    }
    var loadUrl:String
    func updateUIView(_ uiView: WKWebView, context: Context) {
/*        observe.observation = uiView.observe(\WKWebView.url, options: .new) { view, change in
            if let url = uiView.url {
                print("Page loaded: \(url)")
            }
        }*/
        uiView.load(URLRequest(url: URL(string: loadUrl)!))
    }
}


struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(loadUrl: "")
    }
}
