//
//  DetailsVC.swift
//  ArtBookSwift
//
//  Created by Bakyt Dzhumabaev on 25/6/21.
//

import UIKit

class DetailsVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    
    @IBOutlet weak var yearTexxt: UITextField!
    @IBOutlet weak var artistText: UITextField!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
            
        //Recognizers

        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(gestureRecognizer)
        
        imageView.isUserInteractionEnabled = true
        let imageTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(selectImage))
        imageView.addGestureRecognizer(imageTapRecognizer)
        
    }
    
    @objc func selectImage() {
        let picker = UIImagePickerController()
        picker.delegate = self
    }
    
    @objc func hideKeyboard() {
        view.endEditing(true)
    }
    

    @IBAction func saveButtonClicked(_ sender: Any) {
        
        
    }
    

}
