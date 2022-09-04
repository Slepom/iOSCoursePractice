//
//  SecondViewController.swift
//  UITableView
//
//  Created by Полина Жарова on 26.08.22.
//

import UIKit

class SecondViewController: UIViewController  {

    
    @IBOutlet weak var numberOfMonth: UILabel!
    @IBOutlet weak var nameOfMonth: UILabel!
    var name = ""
    var num = " "
    override func viewDidLoad() {
        super.viewDidLoad()
        nameOfMonth.text = "your choice \(name)"
        numberOfMonth.text = "Month number \(num)"
    }
    


}

    
