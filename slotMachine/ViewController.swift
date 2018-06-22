//
//  ViewController.swift
//  slotMachine
//
//  Created by Administrator on 6/22/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slotImage: UIImageView!
    @IBOutlet weak var spinButton: UIButton!
    @IBOutlet weak var cardImg1: UIImageView!
    @IBOutlet weak var cardImg2: UIImageView!
    @IBOutlet weak var cardImg3: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func spinButton(_ sender: Any) {
        
        var generatedRandomNumber = Int(arc4random_uniform(9)) + 1
        var generatedRandomNumber2 = Int(arc4random_uniform(9)) + 1
        var generatedRandomNumber3 = Int(arc4random_uniform(9)) + 1
        
        let hopAnimation:[UIImage] = [
            UIImage(named: "card_suits1.png")!,
            UIImage(named: "card_suits2.png")!,
            UIImage(named: "card_suits3.png")!,
            UIImage(named: "card_suits4.png")!,
            UIImage(named: "card_suits5.png")!,
            UIImage(named: "card_suits6.png")!,
            UIImage(named: "card_suits7.png")!,
            UIImage(named: "card_suits8.png")!,
            UIImage(named: "card_suits9.png")!,
            UIImage(named: "card_suits10.png")!,
            ]
        
            cardImg1.animationImages = hopAnimation
            cardImg1.animationDuration = 1.0
            cardImg1.animationRepeatCount = 5
            cardImg1.startAnimating()
            cardImg1.image = UIImage(named: "card_suits\(generatedRandomNumber).png")
        
            cardImg2.animationImages = hopAnimation
            cardImg2.animationDuration = 1.5
            cardImg2.animationRepeatCount = 2
            cardImg2.startAnimating()
            cardImg2.image = UIImage(named: "card_suits\(generatedRandomNumber2).png")
        
            cardImg3.animationImages = hopAnimation
            cardImg3.animationDuration = 0.7
            cardImg3.animationRepeatCount = 4
            cardImg3.startAnimating()
            cardImg3.image = UIImage(named: "card_suits\(generatedRandomNumber3).png")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

