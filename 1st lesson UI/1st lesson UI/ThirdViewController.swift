//
//  ThirdViewController.swift
//  1st lesson UI
//
//  Created by Полина Жарова on 9.08.22.
//

import UIKit

class ThirdViewController: UIViewController {

    
    var greenCircle = UIView()
    var redCircle = UIView()
    var yellowCircle = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createGreenCircle()
        createRedCircle()
        createYellowCircle()
        bringSubView()
    }
    
    func createGreenCircle(){
        greenCircle = UIView(frame: CGRect(x: 50, y: 70, width: 300, height: 300))
        greenCircle.layer.cornerRadius = greenCircle.frame.width/2
        greenCircle.backgroundColor = .green
        //greenCircle.clipsToBounds = true
        self.view.addSubview(greenCircle)
    }
        
    func createRedCircle(){
            redCircle = UIView(frame: CGRect(x: 50, y: 270, width: 300, height: 300))
            redCircle.layer.cornerRadius = redCircle.frame.width/2
            redCircle.backgroundColor = .red
            self.view.addSubview(redCircle)
            
        }
    func createYellowCircle(){
        yellowCircle = UIView(frame: CGRect(x: 50, y: 470, width: 300, height: 300))
        yellowCircle.layer.cornerRadius = yellowCircle.frame.width/2
        yellowCircle.backgroundColor = .magenta
        //redCircle.clipsToBounds = true
        self.view.addSubview(yellowCircle)
        
    }

    func bringSubView(){
        let array = [greenCircle,redCircle,yellowCircle]
        for value in array{
            self.view.bringSubviewToFront(value)
        }
    }
    
    
    
}
// my project
