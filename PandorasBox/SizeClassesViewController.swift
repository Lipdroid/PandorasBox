//
//  SizeClassesViewController.swift
//  PandorasBox
//
//  Created by Md Munir Hossain on 9/28/16.
//  Copyright © 2016 lipple. All rights reserved.
//

import UIKit

class SizeClassesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.navigationBar.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
     @IBAction func back_pressed(sender: AnyObject) {
        //go back for segues
        //dismissViewControllerAnimated(true, completion: nil)
        //go back for navigation root view
        navigationController?.popToRootViewControllerAnimated(true)
        //go back for previous view
        //navigationController?.popViewControllerAnimated(true)

     }
    
    

}
