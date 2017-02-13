//
//  AuthorizeController.swift
//  Vk Mararoshki
//
//  Created by Eremin Ilya on 13/2/17.
//  Copyright © 2017 Eremin Ilya. All rights reserved.
//

import UIKit

class AuthorizeController: UIViewController, UIWebViewDelegate {
    
    @IBOutlet weak var uiWebView: UIWebView!
    
    override func viewDidLoad() {
        let url = "https://oauth.vk.com/authorize?client_id=5874062&scope=wall&redirect_uri=makamaka&display=page&response_type=token"
        uiWebView.loadRequest(NSURLRequest(url: NSURL(string: url)! as URL) as URLRequest)
        uiWebView.delegate = self
    }
    
    func webView(_ webView: UIWebView, shouldStartLoadWith request: URLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        print(request.url?.absoluteString)
        return true
    }
    
}
