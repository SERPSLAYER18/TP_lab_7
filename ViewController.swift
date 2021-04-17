//
//  ViewController.swift
//  TP_lab7_Task3
//
//  Created by Admin on 17.04.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var AgeTextField: UITextField!
    @IBOutlet weak var HeightTextField: UITextField!
    @IBOutlet weak var WeightTextField: UITextField!
    @IBOutlet weak var GenderSegment: UISegmentedControl!
    @IBOutlet weak var TPWSegment: UISegmentedControl!
    @IBOutlet weak var CalculateButton: UIButton!
    @IBOutlet weak var ResultLabel: UILabel!
    var genderMul : Int = 1, TPWSMul : Int = 1
    override func viewDidLoad() {
        super.viewDidLoad()
   
    }

    
    @IBAction func CalculateTapped(_ sender: Any) {
       
        let height = Double( HeightTextField.text!)!/100
        let weight = Double(WeightTextField.text!)!
        let IMT = Double(weight/(height*height))
        let kalories = (IMT-20)*200
        ResultLabel.text = ("ИМТ: " + String(IMT)+"\nВы должны потреблять " + String(kalories) + " kалорий в день")
    }
    
}

