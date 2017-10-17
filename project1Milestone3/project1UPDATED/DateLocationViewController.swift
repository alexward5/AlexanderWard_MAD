//
//  DateLocationViewController.swift
//  project1UPDATED
//
//  Created by Alexander Ward on 10/12/17.
//  Copyright © 2017 Alexander Ward. All rights reserved.
//

import UIKit

class DateLocationViewController: UIViewController {
    
    
    @IBOutlet weak var locationField: UITextField!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    func createAlert(title:String, message:String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func setDateButton(_ sender: UIButton) {
        
        if locationField.text != "" {
        
            var date = NSDate()
            date = datePicker.date as NSDate
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "MM/dd/yyyy"
            let stringDate = dateFormatter.string(from: date as Date)
            
            history.append(stringDate)
            location.append(locationField.text!)
            vOne.append("0")
            vTwo.append("0")
            vThree.append("0")
            vFour.append("0")
            vFive.append("0")
            vSix.append("0")
            vSeven.append("0")
            vEight.append("0")
            vNine.append("0")
            vTen.append("0")
            total.append("0")
            
            defaults.set(history, forKey: "historyUD")
            defaults.set(location, forKey: "locationUD")
            defaults.set(vOne, forKey: "vOneUD")
            defaults.set(vTwo, forKey: "vTwoUD")
            defaults.set(vThree, forKey: "vThreeUD")
            defaults.set(vFour, forKey: "vFourUD")
            defaults.set(vFive, forKey: "vFiveUD")
            defaults.set(vSix, forKey: "vSixUD")
            defaults.set(vSeven, forKey: "vSevenUD")
            defaults.set(vEight, forKey: "vEightUD")
            defaults.set(vNine, forKey: "vNineUD")
            defaults.set(vTen, forKey: "vTenUD")
            defaults.set(total, forKey: "totalUD")
            defaults.synchronize()
            
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
                
            performSegue(withIdentifier: "toRating", sender: self)
        }
        else {
            createAlert(title: "Missing Field", message: "Please enter a location")
            
        }
        
    }

    

    override func viewDidLoad() {
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))
        
        datePicker.setValue(UIColor.white, forKey: "textColor")
        datePicker.setValue(UIColor.black.withAlphaComponent(0.85), forKey: "backgroundColor")

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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
