WKWebView：网页的渲染与展示，通过WKWebViewConfiguration可以进行配置。

WKWebViewConfiguration：这个类专门用来配置WKWebView。

WKPreference:这个类用来进行M相关设置。

WKProcessPool：这个类用来配置进程池，与网页视图的资源共享有关。

WKUserContentController：这个类主要用来做native与JavaScript的交互管理。

WKUserScript：用于进行JavaScript注入。

WKScriptMessageHandler：这个类专门用来处理JavaScript调用native的方法。

WKNavigationDelegate：网页跳转间的导航管理协议，这个协议可以监听网页的活动。

WKNavigationAction：网页某个活动的示例化对象。

WKUIDelegate：用于交互处理JavaScript中的一些弹出框。

WKBackForwardList：堆栈管理的网页列表。

WKBackForwardListItem：每个网页节点对象。
