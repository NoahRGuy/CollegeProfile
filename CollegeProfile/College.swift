//
//  College.swift
//  CollegeProfile
//
//  Created by Noah Guy on 1/20/16.
//  Copyright © 2016 Noah Guy. All rights reserved.
//

import UIKit

class College: NSObject {

  var name = ""
  var location = ""
  var numberOfStudents = 0
  var image = UIImage(named: "Default")
    var website = ""
    
    init(n: String, l: String, s: Int, i: UIImage, w: String){
        super.init()
        name = n
        location = l
        numberOfStudents = s
        image = i
        website = w
    }
    init(n: String, l: String, s: Int, w: String){
        super.init()
        name = n
        location = l
        numberOfStudents = s
        website = w
    }
    
}
