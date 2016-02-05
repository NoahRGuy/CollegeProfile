//
//  DetailViewController.swift
//  CollegeProfile
//
//  Created by Noah Guy on 1/22/16.
//  Copyright © 2016 Noah Guy. All rights reserved.
//

import UIKit
import SafariServices
class DetailViewController: UIViewController, SFSafariViewControllerDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate{

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var nameTextView: UITextField!
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var sizeTextField: UITextField!
    @IBOutlet weak var webpageTextField: UITextField!
    let imagePicker = UIImagePickerController()
    var college: College!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextView.text = college.name
        locationTextField.text = college.location
        sizeTextField.text = String(college.numberOfStudents)
        myImageView.image = college.image
        webpageTextField.text = college.website
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveButton(sender: UIButton) {
        college.name = nameTextView.text!
        college.location = locationTextField.text!
        college.numberOfStudents = (sizeTextField.text! as NSString).integerValue
        college.website = webpageTextField.text!
        college.image = myImageView.image! as UIImage
    }

    @IBAction func photoButton(sender: UIButton) {
        imagePicker.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        imagePicker.dismissViewControllerAnimated(true) { () -> Void in
            let selectedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
                self.myImageView.image = selectedImage
        }
    }
    @IBAction func goToWebsite(sender: UIButton) {
        var name = "https://" + webpageTextField.text!
        let myURL = NSURL(string: name)
        let svc = SFSafariViewController(URL: myURL!)
        svc.delegate = self
        presentViewController(svc, animated: true, completion: nil)
    }
    func safariViewControllerDidFinish(controller: SFSafariViewController) {
        controller.dismissViewControllerAnimated(true, completion: nil)
    }

}
