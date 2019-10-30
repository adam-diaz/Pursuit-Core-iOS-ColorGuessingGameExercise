//
//  ViewController.swift
//  Color-Guessing-Game
//
//  Created by Adam Diaz on 10/29/19.
//  Copyright © 2019 Adam Diaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var randomColor: UIView!
    
//    let color = randomColor.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    // will be used for enabling and disabling game
    
    @IBOutlet weak var red: UIButton!
    @IBOutlet weak var blue: UIButton!
    @IBOutlet weak var green: UIButton!
    

    let randNum = CGFloat.random(in: 0...1)
    // three random numbers for the rgb
    
    let myColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)

   
    
    @IBAction func guessedColor(_ sender: UIButton) {
         
        randomColor.backgroundColor = myColor
  
        switch sender.tag {
        case 0:
            randomColor.backgroundColor = .red
        case 1:
            randomColor.backgroundColor =
            .blue
        case 2:
            randomColor.backgroundColor = .green
        default:
            randomColor.backgroundColor = .black
        }
        
    }
    
    @IBAction func newGame(_ sender: UIButton) {
       
        let myColor = UIColor(red: CGFloat.random(in: 0...1), green:
        
            CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        
        randomColor.backgroundColor = myColor
        
//        print(myColor)
    }
    
    
}

//randomColor.backgroundColor = .red
// .max states whatever number or color is used the most
