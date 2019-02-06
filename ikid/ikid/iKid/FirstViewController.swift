//
//  ViewController.swift
//  ikid
//
//  Created by Phoebe Hu on 2/5/19.
//  Copyright © 2019 Phoebe Hu. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
  private var firstView : FirstViewController!
    @IBOutlet weak var lbJoke: UILabel!
    
    
    
    @IBOutlet weak var btnFlip: UIButton!
    var fliped = false
    
    
   private func firstBuilder() {
        if firstView == nil {
            firstView =
                storyboard?
                    .instantiateViewController(withIdentifier: "goodView")
                as! FirstViewController
        }
    }
    
    @IBAction func switchViews(_ sender: Any) {
        firstBuilder()
        
        fliped = !fliped
        UIView.beginAnimations("View Flip", context: nil)
        UIView.setAnimationDuration(0.4)
        UIView.setAnimationCurve(.easeInOut)
        
        UIView.setAnimationTransition(.flipFromLeft, for: view, cache: true)
        firstView.view.frame = view.frame
        
        if (fliped) {
            lbJoke.text = "Because it already had a million degrees!"
            btnFlip.setTitle("Back", for: UIControlState.normal)
        } else {
            lbJoke.text = "Why didn't the sun go to college?"
            btnFlip.setTitle("Next", for: UIControlState.normal)
        }
        UIView.commitAnimations()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

