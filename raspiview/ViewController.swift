//
//  ViewController.swift
//  raspiview
//
//  Created by 安達康平 on 2017/01/02.
//  Copyright © 2017年 Kohei Adachi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        loadCamView()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func start(_ sender: Any) {
     loadCamView()
}

    @IBOutlet weak var monitor: UIWebView!
    
    func loadCamView(){
    
        let url: String = "http://192.168.1.43:8081/javascript_simple.html"
        let requestURL = NSURL(string: url)
        let req = NSURLRequest(url: requestURL! as URL)
        
        monitor.loadRequest(req as URLRequest)
    }


}

