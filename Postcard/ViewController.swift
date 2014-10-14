//
//  ViewController.swift
//  Postcard
//
//  Created by Michael Ottavi-Brannon on 10/6/14.
//  Copyright (c) 2014 Michael Ottavi-Brannon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    //@IBOutlet weak var enterStreetTextField: UITextField!
    //@IBOutlet weak var enterCityTextField: UITextField!
    //@IBOutlet weak var enterStateTextField: UITextField!
    //@IBOutlet weak var enterZipTextField: UITextField!
    
    @IBOutlet weak var sendMessageButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMessageButtonPressed(sender: UIButton) {
        messageLabel.hidden = false;
        messageLabel.textColor = UIColor.redColor();
        messageLabel.text = enterMessageTextField.text;
        
        enterMessageTextField.text = "";
        enterMessageTextField.resignFirstResponder()
        sendMessageButton.setTitle("Message Sent!", forState: UIControlState.Normal)
    }

}

