//
//  PhotoViewController.swift
//  PhotoFrame
//
//  Created by Bumgeun Song on 2022/02/18.
//

import UIKit

class PhotoViewController: UIViewController {
    
    let photoPickerController = PhotoPickerViewController()

    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showImageButtonTouched(_ sender: UIButton) {
        let randomFileNum = String.init(format: "%02d", Int.random(in: 1...22))
        photoImageView.image = UIImage(named: randomFileNum + ".jpg")
        photoImageView.contentMode = .scaleAspectFill
    }
    
    @IBAction func selectButtonTouched(_ sender: UIButton) {
        present(photoPickerController, animated: true, completion: nil)
    }
}

extension PhotoViewController: UIImagePickerControllerDelegate {
    
}
