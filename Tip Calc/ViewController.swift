//
//  ViewController.swift
//  Tip Calc
//
//  Created by Rohan Trivedi on 12/30/16.
//  Copyright © 2016 Rohan Trivedi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    let defaults = UserDefaults.standard
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(animated)
        print("view will appear")
        let tipValue = defaults.integer(forKey: "myValue")
        tipControl.selectedSegmentIndex = tipValue
        let tipPercentages = [0.10, 0.15, 0.20]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f" , total)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onTap(_ sender: AnyObject)
    {
        view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: AnyObject)
    {
        let tipPercentages = [0.10, 0.15, 0.20]
        
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f" , total)
    }
    @IBAction func changedValue(_ sender: UISegmentedControl)
    {
        defaults.set(sender.selectedSegmentIndex, forKey: "myValue")
        defaults.synchronize()
    }
    

}

