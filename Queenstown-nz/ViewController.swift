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
        
        // We have here 12 photos and want to select one
        let randomPhoto = Int(arc4random_uniform(UInt32(12)))
        bgPhoto.image = UIImage(named: "qt\(randomPhoto).png")

        
        
        //print(randomPhoto)
        moreButton.layer.cornerRadius = 4.0
        
        NSTimer.scheduledTimerWithTimeInterval(4.0, target: self, selector: #selector(ViewController.randomPhotos(_:)), userInfo: nil, repeats: true)

        
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool){
        let randomPhoto = Int(arc4random_uniform(UInt32(12)))
        bgPhoto.image = UIImage(named: "qt\(randomPhoto).png")
    }
    
    func randomPhotos(timer:NSTimer){
        let randomPhoto = Int(arc4random_uniform(UInt32(12)))
        bgPhoto.image = UIImage(named: "qt\(randomPhoto).png")

    }


}

