//
//  ViewController.swift
//  Actions&Outlets
//
//  Created by scholar on 19/05/1401 AP.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTap(_ sender: UIButton) {
        if let newTitle = textField.text {
            titleLabel.text = newTitle
    }
    
}

}
