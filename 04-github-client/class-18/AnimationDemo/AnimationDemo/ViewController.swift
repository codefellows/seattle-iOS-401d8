//
//  ViewController.swift
//  AnimationDemo
//
//  Created by Adam Wallraff on 11/1/16.
//  Copyright © 2016 Adam Wallraff. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
//        animateButton1()
//        animateButton2()
//        animateButton3()
        animateAllButtons()
    }


    func animateButton1(){
        UIView.animate(withDuration: 1.0, delay: 1.0, options: .curveEaseInOut, animations: {
            self.button1.backgroundColor = UIColor.black
            self.button1.alpha = 0.5
        }) { (finished) in
            print("Animation Complete, Do something else")
        }
    }
    
    func animateButton2(){
        UIView.animate(withDuration: 1.0, delay: 1.0, usingSpringWithDamping: 0.25, initialSpringVelocity: 1.0, options: .curveEaseIn, animations: {
            
            let center = self.view.center
            let newFrame = CGRect(x: center.x, y: center.y, width: 25, height: 25)
            
            self.button2.frame = newFrame
            
        }, completion: nil)
    }
    
    func animateButton3(){
        UIView.animate(withDuration: 1.0, delay: 1.0, usingSpringWithDamping: 0.25, initialSpringVelocity: 0.5, options: .curveEaseIn, animations: {
            
            self.button3.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
            
        }, completion: nil)
    }
    
    func animateAllButtons(){
        UIView.animateKeyframes(withDuration: 4.0, delay: 1.0, options: .calculationModeLinear, animations: {
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.25, animations: {
                self.button1.transform = CGAffineTransform(translationX: 0, y: 100)
            })
            UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 0.5, animations: {
                self.button2.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
            })
            UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 1.0, animations: {
                self.button3.transform = CGAffineTransform(a: 1, b: 0, c: 0, d: 1, tx: 0, ty: 0)
                //Note for the above: a == width, d == height, tx == traslation of x, ty == translation of y
                //play with b and c to see what they do, and read the DOCs!
            })
        }) { (finished) in
            print("Keyframe Animation Completed!")
        }
    }

}

















