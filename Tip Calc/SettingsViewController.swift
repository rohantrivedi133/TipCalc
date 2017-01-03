//
//  SettingsViewController.swift
//  Tip Calc
//
//  Created by Rohan Trivedi on 12/30/16.
//  Copyright © 2016 Rohan Trivedi. All rights reserved.
//

import UIKit
let defaults = UserDefaults.standard
class SettingsViewController: UIViewController
{
    let defaults = UserDefaults.standard
    
    @IBOutlet weak var tipControls: UISegmentedControl!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.title = "Settings"
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(animated)
        print("view will appear")
        let tipValue = defaults.integer(forKey: "myValue")
        tipControls.selectedSegmentIndex = tipValue
    }
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func changeValue(_ sender: UISegmentedControl)
    {
        defaults.set(sender.selectedSegmentIndex, forKey: "myValue")
        defaults.synchronize()
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
