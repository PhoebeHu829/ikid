//
//  ViewController.swift
//  ikid
//
//  Created by Phoebe Hu on 2/5/19.
//  Copyright © 2019 Phoebe Hu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    private var secondView : SecondViewController!
    @IBOutlet weak var lbJoke: UILabel!
    @IBOutlet weak var btnFlip: UIButton!
    var fliped = false
    
    private func secondBuilder() {
        if secondView == nil {
            secondView =
                storyboard?
                    .instantiateViewController(withIdentifier: "punView")
                as! SecondViewController
        }
    }
    
    @IBAction func switchViews(_ sender: Any) {
        secondBuilder()
        
        fliped = !fliped
        UIView.beginAnimations("View Flip", context: nil)
        UIView.setAnimationDuration(0.4)
        UIView.setAnimationCurve(.easeInOut)
        
        UIView.setAnimationTransition(.flipFromLeft, for: view, cache: true)
        secondView.view.frame = view.frame
        
        if (fliped) {
            lbJoke.text = " All I did was take a day off."
            btnFlip.setTitle("Back", for: UIControlState.normal)
        } else {
            lbJoke.text = "I can't believe I got fired from the calendar factory."
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

