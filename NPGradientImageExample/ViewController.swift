//
//  ViewController.swift
//  NPGradientImageExample
//
//  Created by Nestor Popko on 3/7/16.
//  Copyright © 2016 Nestor Popko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var helloWorld: UILabel!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Diagonal gradient
        let backgroundGradient = UIImage.gradientImage(
            colors: [UIColor.whiteColor(), UIColor.darkGrayColor()],
            locations: [0.0, 1.0],
            startPoint: CGPoint(),
            endPoint: CGPoint(x: 1.0, y: 1.0),
            size: view.bounds.size
        )
        view.backgroundColor = UIColor(patternImage: backgroundGradient)
        
        // Horizontal gradient
        let labelGradient = UIImage.gradientImage(
            colors: [UIColor.redColor(),  UIColor.greenColor(), UIColor.blueColor(), UIColor.redColor()],
            locations: [0.0, 0.33, 0.66, 1.0],
            size: helloWorld.bounds.size,
            horizontal: true
        )
        helloWorld.textColor = UIColor(patternImage: labelGradient)
        
        // Vertical gradient
        let buttonGradient = UIImage.gradientImage(
            colors: [UIColor.blackColor(), UIColor.brownColor()],
            locations: [0.0, 1.0],
            size: button.bounds.size
        )
        button.setTitleColor(UIColor(patternImage: buttonGradient), forState: .Normal)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

