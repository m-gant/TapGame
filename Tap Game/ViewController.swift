//
//  ViewController.swift
//  Tap Game
//
//  Created by Mitchell Gant on 1/17/17.
//  Copyright © 2017 Mitchell Gant. All rights reserved.
//

import UIKit
import Darwin

class ViewController: UIViewController {
    
    var Player1Value = 0
    var Player2Value = 0
    var isGameStarted = false;
    
    
    @IBOutlet weak var Player1Score: UILabel!
    @IBOutlet weak var Player2Score: UILabel!

    
    @IBOutlet weak var Player1Button: UIButton!
    @IBOutlet weak var Player2Button: UIButton!
    
    
    @IBAction func Startpressed(_ sender: Any) {
        Player1Value = 0
        Player2Value = 0
        updateUI()
        isGameStarted = true
        let _ = Timer.scheduledTimer(withTimeInterval: 10, repeats: false)  { (_) in
            self.isGameStarted = false
        }
        
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
         // Rotate Button
        Player1Button.transform.rotated(by: CGFloat.pi)
        
        //Round Corners
        Player1Button.layer.cornerRadius = 0.05*Player1Button.bounds.size.width
        Player1Button.clipsToBounds = true
        
        Player2Button.layer.cornerRadius = 0.05*Player2Button.bounds.size.width
        Player2Button.clipsToBounds = true
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func Player1Pressed(_ sender: Any) {
        Player1Value += 1
        updateUI()
    }
    
    
    @IBAction func Player2Pressed(_ sender: Any) {
        Player2Value += 1
        updateUI()
    }
    
    func updateUI() {
        if isGameStarted {
            Player1Score.text = "Player 1 Score: \(Player1Value)"
            Player2Score.text = "Player 2 Score: \(Player2Value)"
        }
        
    }


}

