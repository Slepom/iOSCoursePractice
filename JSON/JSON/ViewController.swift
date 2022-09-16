//
//  ViewController.swift
//  JSON
//
//  Created by Полина Жарова on 6.09.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let url = Bundle.main.url(forResource: "RawData", withExtension: "json") else {
            return
            
        }
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            let jsonData = try decoder.decode(Company.self, from: data)
          
        } catch{

        }
        
        
        
    }


}

