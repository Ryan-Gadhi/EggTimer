//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let levels = ["Soft": 5, "Medium": 8, "Hard": 12]
    var counter = 0
    var timer = Timer()
    var totalTime = 0
    
    @IBOutlet weak var labelUpdate: UILabel!
    
    
    @IBOutlet weak var increasedProgress: UIProgressView!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        let level = sender.currentTitle
    
        print(levels[level!]!)
        print("minutes")
        let eggTimeInMinutes = levels[level!]
        let timeInSeconds = Int(eggTimeInMinutes!) * 60 // 60 seconds in  one minute
        totalTime = timeInSeconds
        countDown(count: Int(timeInSeconds)) // should do it in better way
    
    }
    
    func countDown(count: Int){
        counter = count
        timer.invalidate() // this will stop the timer, so that the 3 buttons don't overlap
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)

    }

    @objc func updateCounter() {
        //example functionality
        if counter > 0 {
            print("time remainging until your egg is ready is \(counter) seconds")
            counter -= 1
            increasedProgress.progress = 1.0 -  Float(counter)/Float(totalTime)
        }else{
            print("your eggs are ready 😇")
            labelUpdate.text = "Horray! your eggs are ready 😍"
            timer.invalidate()
            
            increasedProgress.progress = 1
        }
    }
        
    
  
    

}
