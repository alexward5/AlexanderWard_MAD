//
//  TableViewController.swift
//  project1UPDATED
//
//  Created by Alexander Ward on 10/4/17.
//  Copyright © 2017 Alexander Ward. All rights reserved.
//

import UIKit

var history = [String]()
var memHist = [""]
let defaults = UserDefaults.standard
var location = [String]()
var memLocation = [""]
var myIndex = 0
var vOne = [""]
var memvOne = [""]
var vTwo = [""]
var memvTwo = [""]
var vThree = [""]
var memvThree = [""]
var vFour = [""]
var memvFour = [""]
var vFive = [""]
var memvFive = [""]
var vSix = [""]
var memvSix = [""]
var vSeven = [""]
var memvSeven = [""]
var vEight = [""]
var memvEight = [""]
var vNine = [""]
var memvNine = [""]
var vTen = [""]
var memvTen = [""]
var total = [""]
var memTotal = [""]

class TableViewController: UITableViewController {
    
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return memHist.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        if history.count != 0 {
            cell.textLabel?.text = memHist[indexPath.row]
        }
        cell.textLabel?.textAlignment = .center
        //cell.textLabel?.textColor = UIColor.white
        cell.backgroundColor = UIColor.groupTableViewBackground
        cell.accessoryType = .disclosureIndicator

        return cell
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
            history.remove(at: indexPath.row)
            location.remove(at: indexPath.row)
            vOne.remove(at: indexPath.row)
            vTwo.remove(at: indexPath.row)
            vThree.remove(at: indexPath.row)
            vFour.remove(at: indexPath.row)
            vFive.remove(at: indexPath.row)
            vSix.remove(at: indexPath.row)
            vSeven.remove(at: indexPath.row)
            vEight.remove(at: indexPath.row)
            vNine.remove(at: indexPath.row)
            vTen.remove(at: indexPath.row)
            total.remove(at: indexPath.row)
            
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
            
            myTableView.reloadData()
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
