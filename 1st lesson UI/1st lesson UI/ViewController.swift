//
//  ViewController.swift
//  1st lesson UI
//
//  Created by Полина Жарова on 9.08.22.
//

import UIKit

class ViewController: UIViewController {

    var viewCircle = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewCircle = UIView(frame: CGRect(x: 100, y: 100, width: 300, height: 300))
        viewCircle.layer.cornerRadius = viewCircle.frame.width/2
        viewCircle.center = view.center
        viewCircle.backgroundColor = .green
        
        self.view.addSubview(viewCircle)

    }
 

}

/*
viewCircle = UIView(frame: CGRect(x: 100, y: 100, width: 300, height: 300))
viewCircle.layer.cornerRadius = viewCircle.frame.width/2
viewCircle.center = view.center
viewCircle.backgroundColor = .green
 */
