//
//  ViewController.swift
//  Cassini
//
//  Created by DP on 16/4/4.
//  Copyright © 2016年 DP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let ivc = segue.destinationViewController as? ImageViewController{
            if let identifier = segue.identifier{
                switch identifier {
                case "hxl":
                    ivc.imageURL = DemoURL.MHO.hxl
                case "jjl":
                    ivc.imageURL = DemoURL.MHO.jjl
                default:
                    ivc.imageURL = DemoURL.MHO.jwx
                }
            }
        }
    }
}

