//
//  ViewController.swift
//  Camera
//
//  Created by scholar on 25/05/1401 AP.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    var imagePicker = UIImagePickerController()
    
    @IBOutlet weak var imageDisplay: UIImageView!
    @IBOutlet var table: UITableView!
    @IBOutlet var label: UILabel!
    var models: [(title: String, note: String)] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
        title = "note"
        imagePicker.delegate = self
        // Do any additional setup after loading the view.
    }
    @IBAction func didTapNewNote(){
        
    }
    //table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath )
    }
    @IBAction func choosePhotoTapped(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
    
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            imageDisplay.image = selectedImage
            imagePicker.dismiss(animated: true, completion: nil)
        }
}



}
