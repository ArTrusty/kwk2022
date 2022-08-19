//
//  ViewController.swift
//  Journal
//
//  Created by scholar on 25/05/1401 AP.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var entryLabel1: UILabel!
    
    @IBOutlet weak var warningImage: UIImageView!
    
    @IBOutlet weak var textField1: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        warningImage.isHidden = true
        
        // Do any additional setup after loading the view.
    }

    @IBAction func button1Tapped(_ sender: UIButton) {
        warningImage.isHidden = false
        if let newTitle = textField1.text{
            entryLabel1.text = newTitle
        }
    
    }
    
   
}

