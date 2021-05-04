import Foundation
import WebKit

public class RRWebView: WKWebView {
    
    public init() {
        let webConfiguration = WKWebViewConfiguration()
        webConfiguration.preferences.javaScriptEnabled = true
        super.init(frame: .zero, configuration: webConfiguration)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    @discardableResult
    public func load() -> WKNavigation? {
        if let url = URL(string:"https://www.google.com") {
            let req = URLRequest(url: url)
            return super.load(req)
        }
        return nil
    }
}
