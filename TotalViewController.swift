//
//  TotalViewController.swift
//  Tip Calc
//
//  Created by Rohan Trivedi on 12/31/16.
//  Copyright © 2016 Rohan Trivedi. All rights reserved.
//

import UIKit

class TotalViewController: UIViewController {

    
    
    @IBOutlet weak var totalField: UITextField!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
   
    override func viewDidAppear(_ animated: Bool)
    {
        super.viewDidAppear(animated)
        print("view did appear")
        totalField.becomeFirstResponder()
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.title = "Total Calculator"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func calculateTotal(_ sender: AnyObject)
    {
        let total = Double(totalField.text!) ?? 0
        let bill = Double(billField.text!) ?? 0
        
        let tip = total - bill
        tipLabel.text = String(format: "$%.2f", tip)
        
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
