//
//  ViewController.swift
//  Lab4
//
//  Created by Alexander Ward on 10/18/17.
//  Copyright © 2017 Alexander Ward. All rights reserved.
//

import UIKit

var user = Favorite()

let defaults = UserDefaults.standard

class ViewController: UIViewController {
    
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    
    @IBAction func changeFavButton(_ sender: Any) {
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        user.bandOne = defaults.string(forKey: "firstTextUD")
        user.bandTwo = defaults.string(forKey: "secondTextUD")
        user.bandThree = defaults.string(forKey: "thirdTextUD")
        
        firstLabel.text = user.bandOne
        secondLabel.text = user.bandTwo
        thirdLabel.text = user.bandThree
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        user.bandOne = defaults.string(forKey: "firstTextUD")
        user.bandTwo = defaults.string(forKey: "secondTextUD")
        user.bandThree = defaults.string(forKey: "thirdTextUD")
        
        firstLabel.text = user.bandOne
        secondLabel.text = user.bandTwo
        thirdLabel.text = user.bandThree
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

