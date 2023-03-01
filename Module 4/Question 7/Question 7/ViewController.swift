//
//  ViewController.swift
//  Question 7
//
//  Created by mac on 23/01/23.
//  Copyright © 2023 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var view1: UIImageView!
    @IBOutlet weak var view2: UIImageView!
    @IBOutlet weak var view3: UIImageView!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func img1(_ sender: Any) {
        let photo1 = UIImagePickerController()
        photo1.delegate=self
        present(photo1, animated: true, completion:nil)
        
    }
    @IBAction func btn2(_ sender: Any) {
        let photo2 = UIImagePickerController()
        photo2.delegate=self
        present(photo2, animated: true, completion:nil)
        
    }
    
    @IBAction func btn3(_ sender: Any) {
        let photo3 = UIImagePickerController()
        photo3.delegate=self
        present(photo3, animated: true, completion:nil)
       
    }
}

//extension ViewController:UIImagePickerControllerDelegate, UINavigationControllerDelegate {
//    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
//        let img=info[.originalImage] as! UIImage
//        view3.image=img
//        dismiss(animated: true, completion: nil)
//    }
//
//    func imagePickerController1(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
//        let img2=info[.originalImage] as! UIImage
//        view2.image=img2
//        dismiss(animated: true, completion: nil)
//    }
//
//    func imagePickerController2(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
//        let img3=info[.originalImage] as! UIImage
//        view1.image=img3
//        dismiss(animated: true, completion: nil)
//    }
    
//        let img2=info[.originalImage] as! UIImage
//        view2.image=img2
//        dismiss(animated: true, completion: nil)
//        let img3=info[.originalImage] as! UIImage
//        view3.image=img3
//        dismiss(animated: true, completion: nil)
 
//}
extension ViewController:UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
}
