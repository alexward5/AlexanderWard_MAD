//
//  AddClimbViewController.swift
//  project1UPDATED
//
//  Created by Alexander Ward on 10/5/17.
//  Copyright © 2017 Alexander Ward. All rights reserved.
//

import UIKit

class AddClimbViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let ratings = ["V1", "V2", "V3", "V4", "V5", "V6", "V7", "V8", "V9", "V10"]
    var selection = ""
    var ones = 0, twos = 0, threes = 0, fours = 0, fives = 0, sixes = 0, sevens = 0, eights = 0, nines = 0, tens = 0
    var totalNum = 0
    var index = 0
    
    @IBOutlet weak var ratingPicker: UIPickerView!
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ratings[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selection = ratings[row]
        
        ratingPicker.setValue(UIColor.white, forKey: "textColor")
        ratingPicker.setValue(UIColor.black.withAlphaComponent(0.85), forKey: "backgroundColor")
        
        self.ratingPicker.reloadAllComponents()
    }
    
    func createAlert(title:String, message:String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func addClimb(_ sender: UIButton) {
        
        if history.count != 0 {
            index = history.count - 1
        }
        else {
            index = 0
        }
        
        if selection == ratings[0] {
            ones = ones + 1
            totalNum = totalNum + 1
            let stringInt = String(ones)
            vOne[index] = stringInt
        }
        if selection == ratings[1] {
            twos = twos + 1
            totalNum = totalNum + 1
            let stringInt = String(twos)
            vTwo[index] = stringInt
        }
        if selection == ratings[2] {
            threes = threes + 1
            totalNum = totalNum + 1
            let stringInt = String(threes)
            vThree[index] = stringInt
        }
        if selection == ratings[3] {
            fours = fours + 1
            totalNum = totalNum + 1
            let stringInt = String(fours)
            vFour[index] = stringInt
        }
        if selection == ratings[4] {
            fives = fives + 1
            totalNum = totalNum + 1
            let stringInt = String(fives)
            vFive[index] = stringInt
        }
        if selection == ratings[5] {
            sixes = sixes + 1
            totalNum = totalNum + 1
            let stringInt = String(sixes)
            vSix[index] = stringInt
        }
        if selection == ratings[6] {
            sevens = sevens + 1
            totalNum = totalNum + 1
            let stringInt = String(sevens)
            vSeven[index] = stringInt
        }
        if selection == ratings[7] {
            eights = eights + 1
            totalNum = totalNum + 1
            let stringInt = String(eights)
            vEight[index] = stringInt
        }
        if selection == ratings[8] {
            nines = nines + 1
            totalNum = totalNum + 1
            let stringInt = String(nines)
            vNine[index] = stringInt
        }
        if selection == ratings[9] {
            tens = tens + 1
            totalNum = totalNum + 1
            let stringInt = String(tens)
            vTen[index] = stringInt
        }
        
        let stringTotal = String(totalNum)
        total[index] = stringTotal
        
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
        
        createAlert(title: "Success", message: "Climb Added To History")
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ratings.count
    }
    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        return NSAttributedString(string: ratings[row], attributes: [NSForegroundColorAttributeName:UIColor.white])
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        ratingPicker.setValue(UIColor.white, forKey: "textColor")
        ratingPicker.setValue(UIColor.black.withAlphaComponent(0.85), forKey: "backgroundColor")
        self.ratingPicker.reloadAllComponents()
        
        selection = ratings[0]

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        ratingPicker.setValue(UIColor.white, forKey: "textColor")
        ratingPicker.setValue(UIColor.black.withAlphaComponent(0.85), forKey: "backgroundColor")
        self.ratingPicker.reloadAllComponents()
        
        selection = ratings[0]
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
