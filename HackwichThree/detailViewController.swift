//
//  detailViewController.swift
//  HackwichThree
//
//  Created by CM Student on 4/27/18.
//  Copyright © 2018 CM Student. All rights reserved.
//

import UIKit

class detailViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    
    var imagePass: String?
    
    @IBOutlet weak var myTextView: UITextView!
    
    var textPass: UITextInputMode?
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let imageName = imagePass {
            imageView.image = UIImage(named: imageName)
        
          
    }

        func didReceiveMemoryWarning() {
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
}
