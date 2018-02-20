//
//  ViewController.swift
//  RuMAD18
//
//  Created by Vineeth Puli on 2/14/18.
//  Copyright © 2018 Vineeth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cactusImageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myButton: UIButton!
    
    var color = "white"
    
    
    @IBAction func buttonTapped(_ sender: Any) {
        print("Button was tapped")
        
        let rotationAnimation = CABasicAnimation(keyPath: "transform.rotation")
        rotationAnimation.duration = 1
        rotationAnimation.fromValue = 0
        rotationAnimation.toValue = Double.pi * 2.0
        cactusImageView.layer.add(rotationAnimation, forKey: "rotate")
        
        
        if color == "white"{
            self.view.backgroundColor = UIColor.blue
            color = "blue"
            
        } else if color == "red" {
            self.view.backgroundColor = UIColor.white
            color = "white"
            
        } else if color == "blue" {
            self.view.backgroundColor = UIColor.red
            color = "red"
        }

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //myButton.setTitle("Wassup", for: .normal)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

