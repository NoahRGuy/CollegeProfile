//
//  ViewController.swift
//  CollegeProfile
//
//  Created by Noah Guy on 1/20/16.
//  Copyright © 2016 Noah Guy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var myTableView: UITableView!

    var colleges: [College] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        colleges.append(College(n: "MIT", l: "Boston, Massachusetts", s: 16000, i: UIImage(named: "Default")!))
        colleges.append(College(n: "Stanford University", l: "Stanford, California", s: 16136, i: UIImage(named: "Default")!))
        colleges.append(College(n: "Caltech", l: "Pasadena, California", s: 2209, i: UIImage(named: "Default")!))
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func addButton(sender: UIBarButtonItem) {
        let myAlert = UIAlertController(title: "Add College", message: nil, preferredStyle: .Alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil)
        let addAction = UIAlertAction(title: "Add", style: .Default) { (addAction) -> Void in
            let collegeNameTextField = myAlert.textFields![0] as UITextField
            let locationTextField = myAlert.textFields![1] as UITextField
            let sizeTextField = myAlert.textFields![2] as UITextField
            self.colleges.append(College(n: collegeNameTextField.text!, l: locationTextField.text!, s: Int(sizeTextField.text!)!))
            self.myTableView.reloadData()
        }
        myAlert.addAction(addAction)
        myAlert.addAction(cancelAction)
        myAlert.addTextFieldWithConfigurationHandler { (collegeTextField) -> Void in
            collegeTextField.placeholder = "Enter College Here"
        }
        myAlert.addTextFieldWithConfigurationHandler { (locationNameTextField) -> Void in
            locationNameTextField.placeholder = "Enter Location Here"
        }
        myAlert.addTextFieldWithConfigurationHandler { (studentTextField) -> Void in
            studentTextField.placeholder = "Enter Size Here"
        }
        self.presentViewController(myAlert, animated: true, completion: nil)
        }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let myTableCell = myTableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath)
        myTableCell.textLabel?.text = colleges[indexPath.row].name
        myTableCell.detailTextLabel?.text = colleges[indexPath.row].location
        return myTableCell
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colleges.count
    }

}

