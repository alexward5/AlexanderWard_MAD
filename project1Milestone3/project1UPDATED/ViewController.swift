//
//  ViewController.swift
//  project1UPDATED
//
//  Created by Alexander Ward on 10/4/17.
//  Copyright © 2017 Alexander Ward. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func createAlert(title:String, message:String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func historyButton(_ sender: Any) {
        if history.count != 0 {
            performSegue(withIdentifier: "toHistory", sender: self)
        }
        else {
            createAlert(title: "Warning", message: "No climbs in history")
        }
        
    }
    
    func isKeyPresentInUserDefault(key: String) -> Bool {
        return defaults.stringArray(forKey: "historyUD") != nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let checkHistory = isKeyPresentInUserDefault(key: "historyUD")
        
        if checkHistory {
            memHist = defaults.stringArray(forKey: "historyUD")!
            memLocation = defaults.stringArray(forKey: "locationUD")!
            memvOne = defaults.stringArray(forKey: "vOneUD")!
            memvTwo = defaults.stringArray(forKey: "vTwoUD")!
            memvThree = defaults.stringArray(forKey: "vThreeUD")!
            memvFour = defaults.stringArray(forKey: "vFourUD")!
            memvFive = defaults.stringArray(forKey: "vFiveUD")!
            memvSix = defaults.stringArray(forKey: "vSixUD")!
            memvSeven = defaults.stringArray(forKey: "vSevenUD")!
            memvEight = defaults.stringArray(forKey: "vEightUD")!
            memvNine = defaults.stringArray(forKey: "vNineUD")!
            memvTen = defaults.stringArray(forKey: "vTenUD")!
            memTotal = defaults.stringArray(forKey: "totalUD")!
       
            history = memHist
            location = memLocation
            vOne = memvOne
            vTwo = memvTwo
            vThree = memvThree
            vFour = memvFour
            vFive = memvFive
            vSix = memvSix
            vSeven = memvSeven
            vEight = memvEight
            vNine = memvNine
            vTen = memvTen
            total = memTotal
        }
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

