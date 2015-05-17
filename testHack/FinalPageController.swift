//
//  FinalPageController.swift
//  testHack
//
//  Created by PeterChen on 2015/5/17.
//  Copyright (c) 2015年 PeterChen. All rights reserved.
//

import UIKit

class FinalPageController: UIViewController {
    @IBAction func Exit(sender: AnyObject) {
        exit(0)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
