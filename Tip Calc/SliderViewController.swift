//
//  SliderViewController.swift
//  Tip Calc
//
//  Created by Rohan Trivedi on 12/31/16.
//  Copyright © 2016 Rohan Trivedi. All rights reserved.
//

import UIKit

class SliderViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipPercentLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipSlider: UISlider!
    
    override func viewDidAppear(_ animated: Bool)
    {
        super.viewDidAppear(animated)
        print("view did appear")
        billField.becomeFirstResponder()
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.title = "Slider Tip Calculator"
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(animated)
        print("view will appear")
        let tipValue = defaults.integer(forKey: "myValue")
        tipSlider.value = Float(tipValue)
        
        let bill = Float(billField.text!) ?? 0
        let tip = bill * tipSlider.value/100
        let total = bill + tip
        
        tipPercentLabel.text! = String(Int(tipSlider.value)) + "%"
        tipLabel.text! = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f" , total)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func calculateTip(_ sender: AnyObject)
    {
        let bill = Float(billField.text!) ?? 0
        let tip = bill * tipSlider.value/100
        let total = bill + tip
        
        tipPercentLabel.text! = String(Int(tipSlider.value)) + "%"
        tipLabel.text! = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f" , total)
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
