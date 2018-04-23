//
//  ViewController.swift
//  HackwichThree
//
//  Created by CM Student on 2/5/18.
//  Copyright © 2018 CM Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var firstLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var majoris: UILabel!
    @IBOutlet weak var majorDescription: UILabel!
    @IBOutlet weak var mySpring: UILabel!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var pictureImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    //set firstlabel tothe string "About"
        self.firstLabel.text = "My Name is:"
        self.nameLabel.text = "Clark"
        self.majoris.text = "My Major is:"
        self.majorDescription.text = "ACM"
        self.mySpring.text = "My Spring 2018 Classes are:"
        self.textView.text = "I am a new student to UH West Oahu but not the UH system.  I'm semi-retired balancing military and passion for arts.  I chose the infinite creativeness of the Arts to live my dream. Currently in three classes.  In CM 161 and it's awesome!"
        self.pictureImage.image = UIImage(named:"superman.jpeg")
        self.logoImage.image = UIImage(named: "uhwo.png")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

