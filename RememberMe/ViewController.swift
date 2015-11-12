//
//  ViewController.swift
//  RememberMe
//
//  Created by Paul Vagner on 10/12/15.
//  Copyright © 2015 Paul Vagner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var name: String? {
        
        set {
            
            NSUserDefaults.standardUserDefaults().setObject(newValue, forKey: "name")
            
        }
            get {

                return NSUserDefaults.standardUserDefaults().objectForKey("name") as? String
                
}
    
}


    
    @IBOutlet weak var myField: UITextField!
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBAction func hitButton(sender: AnyObject) {
    
        name = myField.text
        
        if let name = myField.text {
         
            myLabel.text = "Hi \(name)"
        
            
            
            

        
        }
    
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
//        name = "bob"
        
        if let name = name {
            
            myLabel.text = "Welcome back \(name)"
            
            
        }
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

