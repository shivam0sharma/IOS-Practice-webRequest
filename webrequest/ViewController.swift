//
//  ViewController.swift
//  webrequest
//
//  Created by Shivam Sharma on 5/31/17.
//  Copyright © 2017 ShivamSharma. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadRequest(urlString: "https://developer.apple.com/swift/")
    }

    @IBAction func loadSwift(_ sender: UIButton) {
        loadRequest(urlString: "https://developer.apple.com/swift/")
    }
    
    @IBAction func loadGossip(_ sender: UIButton) {
        loadRequest(urlString: "http://www.eonline.com/news")
    }
    
    @IBAction func loadAtlas(_ sender: UIButton) {
        loadRequest(urlString: "http://flagpedia.net/index")
    }
    
    func loadRequest(urlString: String) {
        let url = URL(string: urlString)!
        let request = URLRequest(url: url)
        webView.loadRequest(request)
    }
}

