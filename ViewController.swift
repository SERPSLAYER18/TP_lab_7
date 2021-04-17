//
//  ViewController.swift
//  TP lab 7 task 4
//
//  Created by Admin on 18.04.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var CurrencyLabel: UILabel!
    @IBOutlet weak var CurrencySwitch: UISwitch!
    @IBOutlet weak var ResultLabel: UILabel!
    @IBOutlet weak var DepositTextField: UITextField!
    var mul : Double = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func CurrencySwitched(_ sender: Any) {
        if(CurrencySwitch.isOn){
            CurrencyLabel.text = "$"
            mul = 0.6
        }
        else{
            CurrencyLabel.text = "RUB"
            mul = 1
        }
    }
    @IBAction func CalculatePressed(_ sender: Any) {
        //var deposit : Double,
        var result : Double = 0
        let deposit = Double.init(DepositTextField.text!)
        if deposit!<=5000{
            result = deposit!*(1+0.2*mul)
        }
        else if deposit!<=1000
        {
            result = deposit!*(1+0.05*mul)
        }
        
        ResultLabel.text = "You will earn " + String(result)
    }
    
}

