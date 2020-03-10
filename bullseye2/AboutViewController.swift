//
//  AboutViewController.swift
//  bullseye2
//
//  Created by Maisa Ahmad on 2/26/20.
//  Copyright © 2020 Maisa Ahmad. All rights reserved.
//

import UIKit
import WebKit

class AboutViewController: UIViewController {
    
    @IBAction func close() {
        dismiss(animated:true, completion: nil)
    }
    
    //uploaded package to embed web content into app
    //addition features in UI library
     @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        if let url = Bundle.main.url(forResource: "Bullseye", withExtension: "html"){
            let request = URLRequest(url: url)
            webView.load(request)
        }
    

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
