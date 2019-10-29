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

     let randNum = CGFloat.random(in: 0...1)
    
//       let myColor = UIColor(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
//
   
    
    @IBAction func guessedColor(_ sender: UIButton) {
        
 
        
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
        randomColor.backgroundColor = .black
    }
    
    
}

//randomColor.backgroundColor = .red
