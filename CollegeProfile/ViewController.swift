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

