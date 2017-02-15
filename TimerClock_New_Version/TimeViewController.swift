//
//  TimeViewController.swift
//  TimerClock_New_Version
//
//  Created by Diego Souza Sampaio on 17-02-15.
//  Copyright © 2017 Diego Souza Sampaio. All rights reserved.
//

import UIKit

class TimeViewController: UIViewController {
    
    @IBOutlet weak var HoursLable: UILabel!
    
    @IBOutlet weak var minLabel: UILabel!

    @IBOutlet weak var secLabel: UILabel!
  
    @IBOutlet weak var Pausebutton: UIButton!
    var timer = Timer()
    var counter = 0
    func updateLabels() {
        HoursLable.text = String (format:"%02i", Int(counter)/3600)
        minLabel.text = String (format:"%02i", Int(counter)/60%60)
        secLabel.text = String (format:"%02i", Int(counter)%60)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabels();
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TimeViewController.countdown), userInfo: nil, repeats: true)
        
        // Do any additional setup after loading the view.
    }
    func countdown() {
        if counter > 0 {
            counter -= 1
            print("\(counter)")
            self.updateLabels()
        } else {
            timer.invalidate()
        }
    }
    
    @IBAction func actionPauseButton(_ sender: Any) {
        if Pausebutton.currentTitle == "Pause"
        {
            timer.invalidate()
            Pausebutton.setTitle("Continue", for: UIControlState.normal)
     
    } else {
    timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TimeViewController.countdown), userInfo: nil, repeats: true)
    Pausebutton.setTitle("Pause", for: UIControlState.normal)
    }
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
