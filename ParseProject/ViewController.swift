//
//  ViewController.swift
//  ParseProject
//
//  Created by RWBook Retina on 7/1/15.
//  Copyright (c) 2015 RABO IT. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {

    @IBOutlet var responseLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let testObject = PFObject(className: "Objecto")
        testObject["atributo"] = "valor"
        testObject.saveInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
            self.responseLabel.text = "Object has been saved."
            self.responseLabel.textColor = UIColor.blueColor()
            NSLog("Object has been saved.")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

