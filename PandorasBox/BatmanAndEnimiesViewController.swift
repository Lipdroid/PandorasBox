//
//  BatmanAndEnimiesViewController.swift
//  PandorasBox
//
//  Created by Lipu Hossain on 9/25/16.
//  Copyright © 2016 lipple. All rights reserved.
//

import UIKit

class BatmanAndEnimiesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor();
        self.navigationItem.title = "Batman"
        //make it landsscape
        let value = UIInterfaceOrientation.LandscapeRight.rawValue
        UIDevice.currentDevice().setValue(value, forKey: "orientation")
    }
  
    
    
    
}
