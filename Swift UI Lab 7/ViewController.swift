//
//  ViewController.swift
//  Swift UI Lab 7
//
//  Created by Admin on 17.04.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BGSwitch: UISwitch!
    @IBOutlet weak var SwitchLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SwitchLabel.textColor = UIColor.white
        SwitchLabel.text = "Background image: BG1.jpg"
        view.backgroundColor = UIColor(patternImage: UIImage(named: "BG2")!)
    }

    
    @IBAction func SwitchToggled(_ sender: Any) {
        if BGSwitch.isOn
         {
         SwitchLabel.text = "Background image: BG1.jpg"
         view.backgroundColor = UIColor(patternImage: UIImage(named: "BG1")!)
         }
        else
         {
         SwitchLabel.text = "Background image: BG2.jpg"
         view.backgroundColor = UIColor(patternImage: UIImage(named: "BG2")!)
         }
    }
    
  
    
    
}

