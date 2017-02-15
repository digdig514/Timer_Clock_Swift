//
//  ViewController.swift
//  TimerClock_New_Version
//
//  Created by Diego Souza Sampaio on 17-02-15.
//  Copyright © 2017 Diego Souza Sampaio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindToSelection(sender: UIStoryboardSegue)
    {
        
    }
    override func prepare(for segue:UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Preset 1" {
            let vc = segue.destination as! TimeViewController
            vc.counter = Int(60)
        } else if segue.identifier == "Preset 2" {
            let vc = segue.destination as! TimeViewController
            vc.counter = Int(3600)
        } else if segue.identifier == "Preset 3" {
            let vc = segue.destination as! TimeViewController
            vc.counter = Int(7200)
        }
    }

}

