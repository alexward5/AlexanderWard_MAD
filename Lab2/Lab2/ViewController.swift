//
//  ViewController.swift
//  Lab2
//
//  Created by Alexander Ward on 9/20/17.
//  Copyright © 2017 Alexander Ward. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var albumImage: UIImageView!
    @IBOutlet weak var albumTitle: UILabel!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var capitalize: UISwitch!
    @IBOutlet weak var colorSwitch: UISwitch!

    func updateAlbum() {
        if segmentedControl.selectedSegmentIndex == 0 {
            albumTitle.text = "ok computer (1997)"
            albumImage.image = UIImage(named: "OKcomputer")
        }
        else if segmentedControl.selectedSegmentIndex == 1 {
            albumTitle.text = "kid a (2000)"
            albumImage.image = UIImage(named: "KidA")
        }
        else if segmentedControl.selectedSegmentIndex == 2 {
            albumTitle.text = "in rainbows (2007)"
            albumImage.image = UIImage(named: "InRainbows")
        }
        else {
            albumTitle.text = ""
        }
    
    }
    
    func updateCaps() {
        if capitalize.isOn {
            albumTitle.text = albumTitle.text?.uppercased()
        }
        else {
            albumTitle.text = albumTitle.text?.lowercased()
        }
    
    }
    
    func updateColor() {
        if colorSwitch.isOn {
            albumTitle.textColor = UIColor.red
        }
        else {
            albumTitle.textColor = UIColor.white
        }
    }
    
    @IBAction func changeAlbum(_ sender: Any) {
        updateAlbum()
        updateCaps()
    }

    @IBAction func fontSlider(_ sender: UISlider) {
        let fontSize=sender.value //float
        let fontSizeCGFloat = CGFloat(fontSize)
        albumTitle.font = UIFont.systemFont(ofSize: fontSizeCGFloat)
    }
    
    
    @IBAction func changeCaps(_ sender: Any) {
        updateCaps()
    }
    
    @IBAction func changeColor(_ sender: Any) {
        updateColor()
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

