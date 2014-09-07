//
//  ViewController.swift
//  WebViewDemo
//
//  Created by Kevin Bluer on 08/07/14.
//  Copyright (c) 2014 Kevin Bluer. All rights reserved.
//

import UIKit

class ViewController: UIViewController  {
    
    @IBOutlet var webView: UIWebView!
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = NSURL(string: "http://www.google.com")
        let request = NSURLRequest(URL: url)
        webView.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func doRefresh(AnyObject) {
        webView.reload()
    }
    
    @IBAction func goBack(AnyObject) {
        webView.goBack()
    }
    
    @IBAction func goForward(AnyObject) {
        webView.goForward()
    }
    
    @IBAction func stop(AnyObject) {
        webView.stopLoading()
    }

}

