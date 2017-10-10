//
//  ViewController.swift
//  Lab3
//
//  Created by Alexander Ward on 10/9/17.
//  Copyright © 2017 Alexander Ward. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var inningsPitched: UITextField!
    @IBOutlet weak var runsAllowed: UITextField!
    @IBOutlet weak var ERA: UILabel!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func updateERA() {
        
        var innings:Float
        var runs:Float
        
        if inningsPitched.text!.isEmpty {
            innings = 0.0
        }
        else {
            innings=Float(inningsPitched.text!)!
        }
        if runsAllowed.text!.isEmpty {
            runs = 0.0
        }
        else {
            runs=Float(runsAllowed.text!)!
        }
        
        let formatter = NumberFormatter()
        formatter.numberStyle = NumberFormatter.Style.decimal
        formatter.usesSignificantDigits = true
        formatter.maximumSignificantDigits = (3)
        formatter.minimumSignificantDigits = (3)
        let eraLabel = (runs/innings)*9
        ERA.text = formatter.string(from: NSNumber(value: eraLabel))
        
        let numInningsPitched = innings
        
        if numInningsPitched < 0.1 {
            let alert = UIAlertController(title: "Warning", message: "Number of innings pitched must be greater than 0", preferredStyle: UIAlertControllerStyle.alert)
            let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil)
            alert.addAction(cancelAction)
            let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: {action in
                self.inningsPitched.text = "1"
                self.updateERA()
            })
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
        }
        
        
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        updateERA()
    }
    
    override func viewDidLoad() {
        inningsPitched.delegate=self
        runsAllowed.delegate=self
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

