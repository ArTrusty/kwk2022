//
//  ViewController.swift
//  aboutMe
//
//  Created by scholar on 19/05/1401 AP.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
   
    @IBOutlet weak var button1Food: UIButton!
    @IBOutlet weak var greetingLabel: UILabel!
    
    @IBOutlet weak var button3Hobby: UIButton!
    @IBOutlet weak var button2Color: UIButton!
    @IBOutlet weak var Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button1Food.isHidden = true
        button2Color.isHidden = true
        button3Hobby.isHidden = true
        // Do any additional setup after loading the view.
      
        
        
        
    }

    @IBAction func enterTapped(_ sender: UIButton) {
        if let newName = textField.text{
            greetingLabel.text = "Hello \(newName) here are some facts about me."
            
        }
    }
    
    @IBAction func buttonEnter(_ sender: UIButton) {
        button1Food.isHidden = false
        button2Color.isHidden = false
        button3Hobby.isHidden = false
    }
    
}

