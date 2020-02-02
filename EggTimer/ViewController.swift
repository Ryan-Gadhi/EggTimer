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
    
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        let level = sender.currentTitle
    
        print(levels[level!])
        print("minutes")
    }
    

}
