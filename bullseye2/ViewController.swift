//
//  ViewController.swift
//  bullseye2
//
//  Created by Maisa Ahmad on 2/11/20.
//  Copyright © 2020 Maisa Ahmad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var currentValue: Int = 50//slider value
    var targetValue = 0 //goal value
    var score = 0 //keeps track of total score
    var round = 0 //keeps track of what round you're on
    //can also specify the data type by doing var round: Int = 0
    


    @IBOutlet weak var targetLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var roundLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let thumbImageNormal = UIImage(named: "SliderThumb-Normal")!
        slider.setThumbImage(thumbImageNormal, for: .normal)
    
        let thumbImageHighlighted = UIImage(named: "SliderThumb-Highlighted")!
        slider.setThumbImage(thumbImageHighlighted, for: .highlighted)
        
        let insets = UIEdgeInsets(top: 0, left: 14, bottom: 0, right:
        14)
        
        let trackLeftImage = UIImage(named: "SliderTrackLeft")!
        
        let trackLeftResizable = trackLeftImage.resizableImage(withCapInsets: insets)
        slider.setMinimumTrackImage(trackLeftResizable, for: .normal)
        
        let trackRightImage = UIImage(named: "SliderTrackRight")!
        
        let trackRightResizable = trackRightImage.resizableImage(withCapInsets: insets)
        
        slider.setMaximumTrackImage(trackRightResizable, for: .normal)
        
        startNewGame()
    }
    
    @IBAction func startOver() {
        startNewGame()
    }
    
    func startNewGame() {
      score = 0
      round = 0
      startNewRound()
    }
    
    func startNewRound(){
        round += 1
        currentValue = 50
        targetValue = Int.random(in: 1...100)
        slider.value = Float(currentValue)
        updateLabels()
    }
    
    func updateLabels(){
        targetLabel.text = String(targetValue)
        scoreLabel.text = String(score)
        roundLabel.text = String(round)
    }

    @IBAction func ShowAlert() {
       /* let message = "The value of the slider is: \(currentValue)" + "\nThe target value is: \(targetValue)"
        //doing things like \(currentValue) is called string interpolation, it can also be done by simply writing String(currentvalue)*/
        
        let difference = abs(targetValue-currentValue)
        var points = 100 - difference
        
        score += points //each round points are added to total score
        
        var title = ""
        if difference == 0 {
            title = "Perfect!"
            points += 100
        }
        
        else if difference < 5{
            title = "You almost had it!"
            points += 50
        }
        else if difference < 10{
            title = "Pretty good!"
        }
        else{
            title = "Suck"
        }
        
        let message = "You scored \(points) points"
        let alert = UIAlertController(title: title, message:message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "PLS", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion:nil)
        startNewRound()
    }
    @IBAction func SliderMoved(_ slider: UISlider) {
        currentValue = lroundf(slider.value)
    }
    
}

