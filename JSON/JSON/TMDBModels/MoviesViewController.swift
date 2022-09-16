//
//  MoviesViewController.swift
//  JSON
//
//  Created by Полина Жарова on 8.09.22.
//

import UIKit
import Alamofire
class MoviesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let request = AF.request("https://api.themoviedb.org/3/trending/movie/day?api_key=6cde63f94256f35e302a61f1dd4b7524", method: .get)
        
            
        }

    }
    

    

}
