//
//  ViewController.swift
//  ikid
//
//  Created by Phoebe Hu on 2/5/19.
//  Copyright © 2019 Phoebe Hu. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    private var thirdView : ThirdViewController!
    @IBOutlet weak var lbJoke: UILabel!
    @IBOutlet weak var btnFlip: UIButton!
    var fliped = false
    
    private func thirdBuilder() {
        if thirdView == nil {
            thirdView =
                storyboard?
                    .instantiateViewController(withIdentifier: "dadView")
                as! ThirdViewController
        }
    }
    
    @IBAction func switchViews(_ sender: Any) {
        thirdBuilder()
        
        fliped = !fliped
        UIView.beginAnimations("View Flip", context: nil)
        UIView.setAnimationDuration(0.4)
        UIView.setAnimationCurve(.easeInOut)
        
        UIView.setAnimationTransition(.flipFromLeft, for: view, cache: true)
        thirdView.view.frame = view.frame
        
        if (fliped) {
            lbJoke.text = "It was two tired."
            btnFlip.setTitle("Back", for: UIControlState.normal)
        } else {
            lbJoke.text = "Why couldn't the bicycle stand up by itself?"
            btnFlip.setTitle("Next", for: UIControlState.normal)
        }
        UIView.commitAnimations()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
