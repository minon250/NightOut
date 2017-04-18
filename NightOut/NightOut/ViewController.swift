//
//  ViewController.swift
//  NightOut
//
//  Created by Minon Weerasinghe on 16/4/17.
//  Copyright © 2017 Minon Weerasinghe. All rights reserved.
//

import UIKit
import FirebaseDatabase

class ViewController: UIViewController {
    var ref: FIRDatabaseReference?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        FirebaseDataController.fetchData()
     
        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

