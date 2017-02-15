//
//  CustomViewController.swift
//  TimerClock_New_Version
//
//  Created by Diego Souza Sampaio on 17-02-15.
//  Copyright © 2017 Diego Souza Sampaio. All rights reserved.
//

import UIKit

class CustomViewController: UIViewController {

    @IBOutlet weak var HoursLabel: UILabel!
    @IBOutlet weak var MinHours: UILabel!
    @IBOutlet weak var SecLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue:UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Confirm" {
            let vc = segue.destination as! TimeViewController
            let hours = (HoursLabel.text! as NSString).integerValue*Int(3600)
            let minutes = (MinHours.text! as NSString).integerValue*Int(60)
            let seconds = (SecLabel.text! as NSString).integerValue
            vc.counter = (hours+minutes+seconds)
        }
    }
    
    @IBAction func hoursStepperTouchUpInside(_ sender: UIStepper) {
        HoursLabel.text = Int(sender.value).description
    }
    @IBAction func minutesStepperTouchUpInside(_ sender: UIStepper) {
        MinHours.text = Int(sender.value).description
    }
    @IBAction func secondsStepperTouchUpInside(_ sender: UIStepper) {
        SecLabel.text = Int(sender.value).description
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
