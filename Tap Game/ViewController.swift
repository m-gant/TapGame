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
    
    var Player1Score = 0
    var Player2Score = 0
    var isGameStarted = false;
    
    
    @IBOutlet weak var Player1ScoreDisplay: UILabel!
    
    @IBOutlet weak var Player2ScoreDisplay: UILabel!
   
    
    @IBOutlet weak var Player1Button: UIButton!
    @IBOutlet weak var Player2Button: UIButton!
    @IBOutlet weak var StartButton: UIButton!
    
    
    @IBAction func Startpressed(_ sender: Any) {
        Player1Score = 0
        Player2Score = 0
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
        // Player1Button.transform.rotated(by: CGFloat.pi)
        
        //Round Corners
        Player1Button.layer.cornerRadius = 0.05*Player1Button.bounds.size.width
        Player1Button.clipsToBounds = true
        
        Player2Button.layer.cornerRadius = 0.05*Player2Button.bounds.size.width
        Player2Button.clipsToBounds = true
        

        StartButton.layer.cornerRadius = 0.1*StartButton.bounds.size.width
//        Player1ScoreDisplay.layer.cornerRadius = 0.1*Player1ScoreDisplay.bounds.size.width
//        Player2ScoreDisplay.layer.cornerRadius = 0.1*Player2ScoreDisplay.bounds.size.width
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func Player1Pressed(_ sender: Any) {
        Player1Score += 1
        updateUI()
    }
    
    
    @IBAction func Player2Pressed(_ sender: Any) {
        Player2Score += 1
        updateUI()
    }
    
    func updateUI() {
        if isGameStarted {
            Player1ScoreDisplay.text = "\(Player1Score)"
            Player2ScoreDisplay.text = "\(Player2Score)"
        }
        
    }


}


//Some Bull
//extension UIView {
//    @IBInspectable var borderColor: UIColor? {
//        get {
//            return UIColor(cgColor: layer.borderColor!)
//        }
//        set {
//            layer.borderColor = newValue?.cgColor
//        }
//    }
//}
//
