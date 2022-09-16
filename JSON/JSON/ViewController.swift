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
            //print("\(jsonData.companyDescription!) \(jsonData.listOfData!.first!.name!) \(jsonData.listOfData!.first!.modelNumber!) \(jsonData.listOfData![0].countries!.first!) \(jsonData.listOfData![0].price!.regions![0].name!)")
            //print("\(jsonData.companyDescription!) \(jsonData.listOfData!.last!.name!) \(jsonData.listOfData!.last!.modelNumber!) \(jsonData.listOfData!.last!.countries!.last!) \(jsonData.listOfData!.last!.price!.regions!.last!.name!)")
        } catch{
            //print (error)
        }
        
        
        
    }


}

