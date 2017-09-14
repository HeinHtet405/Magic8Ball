//
//  ViewController.swift
//  Magic8ball
//
//  Created by Hein Htet Aung on 9/14/17.
//  Copyright © 2017 Hein Htet Aung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    var randomBallNumber = 0

    @IBOutlet weak var answerBallImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newBallImage()
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }

    @IBAction func pressedAskBtn(_ sender: Any) {
        newBallImage()
    }
    
    func newBallImage(){
        randomBallNumber = Int(arc4random_uniform(5))
        answerBallImageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }

}

