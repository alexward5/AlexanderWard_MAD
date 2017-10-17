//
//  ResultsViewController.swift
//  project1UPDATED
//
//  Created by Alexander Ward on 10/12/17.
//  Copyright © 2017 Alexander Ward. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    
    @IBOutlet weak var v1: UILabel!
    @IBOutlet weak var v2: UILabel!
    @IBOutlet weak var v3: UILabel!
    @IBOutlet weak var v4: UILabel!
    @IBOutlet weak var v5: UILabel!
    @IBOutlet weak var v6: UILabel!
    @IBOutlet weak var v7: UILabel!
    @IBOutlet weak var v8: UILabel!
    @IBOutlet weak var v9: UILabel!
    @IBOutlet weak var v10: UILabel!
    @IBOutlet weak var totalClimbs: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateLabel.text = memHist[myIndex]
        locationLabel.text = memLocation[myIndex]
        v1.text = memvOne[myIndex]
        v2.text = memvTwo[myIndex]
        v3.text = memvThree[myIndex]
        v4.text = memvFour[myIndex]
        v5.text = memvFive[myIndex]
        v6.text = memvSix[myIndex]
        v7.text = memvSeven[myIndex]
        v8.text = memvEight[myIndex]
        v9.text = memvNine[myIndex]
        v10.text = memvTen[myIndex]
        totalClimbs.text = memTotal[myIndex]

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
