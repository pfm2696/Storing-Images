//
//  ViewController.swift
//  Storing Images
//
//  Created by Peter & Liz  on 2/18/15.
//  Copyright (c) 2015 P&L Studios. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet var ipass: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /*
        
        let url = NSURL(string:"http://ipassapcomp.com/wp-content/uploads/2014/10/ipass-logo2.jpg")
        
        let urlRequest = NSURLRequest(URL: url!)
        
        NSURLConnection.sendAsynchronousRequest(urlRequest, queue: NSOperationQueue.mainQueue(), completionHandler: {
            response, data, error in
        
            if error != nil {
                println("There was an error")
            
            } else {
            
                let image = UIImage(data: data)
            
                // self.ipass.image = image
                
                var documentsDirectory:String?
                
                var paths:[AnyObject] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)
                
                if paths.count > 0 {
                
                    documentsDirectory = paths[0] as? String
                    
                    var savePath = documentsDirectory! + "/ipass.jpg"
                    
                    NSFileManager.defaultManager().createFileAtPath(savePath, contents: data, attributes: nil)
                    
                    self.ipass.image = UIImage(named: savePath)
                
                }
            
            }
        
        
        })
    
    */ 

            var documentsDirectory:String?

            var paths:[AnyObject] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)

        
                if paths.count > 0 {
                    
                    documentsDirectory = paths[0] as? String
    
                    var savePath = documentsDirectory! + "/ipass.jpg"
    
                    self.ipass.image = UIImage(named: savePath)

            }
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

