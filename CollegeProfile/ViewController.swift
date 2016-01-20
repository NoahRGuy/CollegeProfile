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

    var colleges = [3]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let myTableCell = myTableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath)
        return myTableCell
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colleges.count
    }

}

