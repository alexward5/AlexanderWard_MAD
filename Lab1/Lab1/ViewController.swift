//
//  ViewController.swift
//  Lab1
//
//  Created by Alexander Ward on 9/12/17.
//  Copyright © 2017 Alexander Ward. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var teamImage: UIImageView!
    
    @IBOutlet weak var teamInfo: UILabel!
    
    @IBAction func chooseTeam(_ sender: UIButton) {
        if sender.tag == 1 {
            teamImage.image=UIImage(named: "Broncos")
            view.backgroundColor=UIColor(red: 243/255.0, green: 106/255.0, blue: 36/255.0, alpha: 1.0)
            teamInfo.text = "The Denver Broncos were founded in 1960, and have won 3 Super Bowls. Since 1984 the Broncos have the best record at home of any team in the NFL."
        }
        else if sender.tag == 2 {
            teamImage.image=UIImage(named: "Rockies")
            view.backgroundColor=UIColor(red: 4/255.0, green: 2/255.0, blue: 4/255.0, alpha: 1.0)
            teamInfo.text = "The Colorado Rockies were founded in 1993. The team's greatest achievement occured at the end of the 2007 season when they won 22 out of 23 games to get to the World Series, where they eventually lost to the Boston Red Sox."
        }
        else if sender.tag == 3 {
            teamImage.image=UIImage(named: "Avalanche")
            view.backgroundColor=UIColor(red: 118/255.0, green: 25/255.0, blue: 46/255.0, alpha: 1.0)
            teamInfo.text = "The Colorado Avalanche joined the NHL in 1979. The team had the most success from 1995 to 2003 when they won their devision 8 years in a row, in addition to winning 2 Stanley Cup Finals."
        }
        else {
            teamImage.image=UIImage(named: "Colorado")
            view.backgroundColor=UIColor(red: 25/255.0, green: 47/255.0, blue: 94/255.0, alpha: 1.0)
            teamInfo.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

