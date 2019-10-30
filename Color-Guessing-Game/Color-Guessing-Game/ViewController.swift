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
    
//    let color = randomColor.
    
    
     let randNum = CGFloat.random(in: 0...1)
     // three random numbers for the rgb
     
    var randomRed: CGFloat = 0
    var randomGreen: CGFloat = 0
    var randomBlue: CGFloat = 0

     

     
     
    
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
    
    @IBOutlet weak var red: UIButton!
    @IBOutlet weak var blue: UIButton!
    @IBOutlet weak var green: UIButton!
    
    let rgbRed = UIColor.red
    let rgbGreen = UIColor.green
    let rgbBlue = UIColor.blue
    
    @IBAction func guessedColor(_ sender: UIButton) {


        
        switch sender.tag {
        case 0:
            
            if rgbGreen == rgbBlue {
                print("red")
            }
            
        case 1:
            displayView.backgroundColor =
            .blue
        case 2:
            displayView.backgroundColor = .green
        default:
            displayView.backgroundColor = .black
        }
        
    }
    
    @IBAction func newGame(_ sender: UIButton) {
       
        let myColor = UIColor(red: CGFloat.random(in: 0...1), green:
        
            CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        
        displayView.backgroundColor = myColor
        
//        print(myColor)
    }
    
    
}

//randomColor.backgroundColor = .red
// .max states whatever number or color is used the most
