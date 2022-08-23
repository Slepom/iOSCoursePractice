//
//  SecondViewController.swift
//  1st lesson UI
//
//  Created by Полина Жарова on 9.08.22.
//

import UIKit

class SecondViewController: UIViewController {

    var greenCircle = UIView()
    var redCircle = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createGreenCircle()
        createRedCircle()
        self.view.bringSubviewToFront(greenCircle)
    }
    
    func createGreenCircle(){
        greenCircle = UIView(frame: CGRect(x: 50, y: 100, width: 300, height: 300))
        greenCircle.layer.cornerRadius = greenCircle.frame.width/2
        greenCircle.backgroundColor = .green
        //greenCircle.clipsToBounds = true
        self.view.addSubview(greenCircle)
    }
        
        func createRedCircle(){
            redCircle = UIView(frame: CGRect(x: 50, y: 300, width: 300, height: 300))
            redCircle.layer.cornerRadius = redCircle.frame.width/2
            redCircle.backgroundColor = .red
            //redCircle.clipsToBounds = true
            self.view.addSubview(redCircle)
            
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


