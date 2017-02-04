//
//  ViewController.swift
//  Stopwatch
//
//  Created by Nihit  on 9/23/15.
//  Copyright © 2015 Nihit . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
     var timer = NSTimer()
    var time = 0
    
    
    @IBAction func reset(sender: AnyObject) {
        
        
        timer.invalidate()
        time = 0
        
        timerLabel.text = "0"
        
    }
    
    
    @IBAction func pause(sender: AnyObject) {
        timer.invalidate()
        
    }
    
    @IBAction func play(sender: AnyObject) {
        
      timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("IncreaseTimer"), userInfo: nil, repeats: true)
        
    }
    
    @IBOutlet weak var timerLabel: UILabel!
    
    func IncreaseTimer(){
    
        time++
        
        timerLabel.text = String(time)
    
    }
    
    
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

