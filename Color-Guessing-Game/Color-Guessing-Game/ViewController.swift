//
//  ViewController.swift
//  Color-Guessing-Game
//
//  Created by Adam Diaz on 10/29/19.
//  Copyright © 2019 Adam Diaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var displayView: UIView!
    
    @IBOutlet weak var scoreKeeper: UILabel!
    
    @IBOutlet weak var highScoreKeeper: UILabel!
    
    @IBOutlet weak var pickLabel: UILabel!
    
    @IBOutlet weak var red: UIButton!
    
    @IBOutlet weak var blue: UIButton!
    
    @IBOutlet weak var green: UIButton!
    

    
    //    let color = randomColor.
    // score.increment() += 1
    
     let randNum = CGFloat.random(in: 0...1)
     // three random numbers for the rgb
     
    var randomRed: CGFloat = 0.0
    var randomGreen: CGFloat = 0.0
    var randomBlue: CGFloat = 0.0

    var score = 0
    var highScore = 0
//    var red: CGFloat = 0.0
//    var green: CGFloat = 0.0
//    var blue: CGFloat = 0.0
     
     
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        //randomColor.backgroundColor = .magenta
        
        // TODO: write a function called randomColor
        
        randomColor()
        

    }

    func randomColor() {
        randomRed = CGFloat.random(in: 0...1)
        randomGreen = CGFloat.random(in: 0...1)
        randomBlue = CGFloat.random(in: 0...1)
        displayView.backgroundColor = UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1)
    }
    
    // the code below will be used for enabling and disabling game (do not FORGET)
    
//    @IBOutlet weak var red: UIButton!
//    @IBOutlet weak var blue: UIButton!
//    @IBOutlet weak var green: UIButton!
    
    // threre card monty is enable function to disable buttons look at the code from there
//    
    
    @IBAction func guessedColor(_ sender: UIButton) {


        
        switch sender.tag {
        case 0:
            
            if  randomRed >= randomGreen && randomRed >= randomBlue {
               randomColor()
                score += 1
                scoreKeeper.text = "Score: \(score)"
                if score >= highScore {
                    highScore = score
                    highScoreKeeper.text = "High Score: \(highScore)"
                }
            } else {
              pickLabel.text = "Wrong! Tap, New Game."
                
                [red, blue, green].forEach({$0?.isEnabled = false})
            }
                
            
//                sender.isEnabled = false
            
            
        case 1:
            if randomBlue >= randomRed && randomBlue >= randomGreen {
                randomColor()
                score += 1
                scoreKeeper.text = "Score: \(score)"
                if score > highScore {
                    highScore = score
                highScoreKeeper.text = "High Score: \(highScore)"
            }
            } else {
                pickLabel.text = "Wrong! Tap, New Game."
                [red, blue, green].forEach({$0?.isEnabled = false})
            }
               
            
//            sender.isEnabled = false
            
            
         case 2:
            if randomGreen >= randomRed && randomGreen >= randomBlue {
                randomColor()
                score += 1
                scoreKeeper.text = "Score: \(score)"
                if score > highScore {
                    highScore = score
                highScoreKeeper.text = "High Score: \(highScore)"
                
            }
                
            
            } else {
                pickLabel.text = "Wrong! Tap, New Game."
                [red, blue, green].forEach({$0?.isEnabled = false})
            }
            
            
         default:
                
            displayView.backgroundColor = .black
        }
        
    }
    
    @IBAction func newGame(_ sender: UIButton) {
       
        randomColor()
        score = 0
        scoreKeeper.text = "Score: \(score)"
//        print(myColor)
    }


//randomColor.backgroundColor = .red
// .max states whatever number or color is used the most
}
