//
//  ViewController.swift
//  Midterm1NEW
//
//  Created by Alexander Ward on 10/19/17.
//  Copyright © 2017 Alexander Ward. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var milesTextField: UITextField!
    @IBOutlet weak var commuteTimeLabel: UILabel!
    @IBOutlet weak var gasToPurchaseLabel: UILabel!
    @IBOutlet weak var gasIntankLabel: UILabel!
    @IBOutlet weak var transMethod: UISegmentedControl!
    
    @IBAction func gasInTankSlider(_ sender: UISlider) {
        let gasAmount = sender.value
        gasIntankLabel.text = String(format: "%.0f", gasAmount)
        
    }
    
    func updateMonthly() {
        if monthlySwitch.isOn {
            var doubleMiles = 0.0
            var doubleCommuteTime = 0.0
            var doubleGas = 0.0
            
            doubleMiles = Double(milesTextField.text!)!
            doubleCommuteTime = (doubleMiles/20.0)*20
            doubleGas = (doubleMiles/24.0)*20
            
            commuteTimeLabel.text = String(doubleCommuteTime)
            gasToPurchaseLabel.text = String(format: "%.2f", doubleGas)
        }
        else {
            var doubleMiles = 0.0
            var doubleCommuteTime = 0.0
            var doubleGas = 0.0
            
            doubleMiles = Double(milesTextField.text!)!
            doubleCommuteTime = doubleMiles/20.0
            doubleGas = doubleMiles/24.0
            
            commuteTimeLabel.text = String(doubleCommuteTime)
            gasToPurchaseLabel.text = String(format: "%.2f", doubleGas)
        }
    }
    
    @IBOutlet weak var monthlySwitch: UISwitch!
    @IBAction func switchAction(_ sender: UISwitch) {
        updateMonthly()
    }
    
    
    @IBAction func commuteButton(_ sender: UIButton) {
        
        var doubleMiles = 0.0
        var doubleCommuteTime = 0.0
        var doubleGas = 0.0
        
        doubleMiles = Double(milesTextField.text!)!
        doubleCommuteTime = doubleMiles/20.0
        doubleGas = doubleMiles/24.0
        
        commuteTimeLabel.text = String(doubleCommuteTime)
        gasToPurchaseLabel.text = String(format: "%.2f", doubleGas)
        
        if doubleMiles > 50.0 {
            let alert = UIAlertController(title: "Alert", message: "Your commute is over 50 miles!", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
    }
    
    @IBAction func changeTrans(_ sender: UISegmentedControl) {
        
    }
    
    func updateValues() {
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        milesTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

