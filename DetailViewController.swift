//
//  DetailViewController.swift
//  CollegeProfile
//
//  Created by Noah Guy on 1/22/16.
//  Copyright © 2016 Noah Guy. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var nameTextView: UITextField!
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var sizeTextField: UITextField!
    var college: College!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextView.text = college.name
        locationTextField.text = college.location
        sizeTextField.text = String(college.numberOfStudents)
        myImageView.image = college.image
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
    }

}
