//
//  ViewController.swift
//  Queenstown-nz
//
//  Created by Alex Lima Lopes Cancado on 2/07/16.
//  Copyright © 2016 Alex Lima Lopes Cancado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bgPhoto: UIImageView!
    @IBOutlet weak var moreButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let randomPhoto = Int(arc4random_uniform(UInt32(12)))
        
        
        moreButton.layer.cornerRadius = 2.0
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

