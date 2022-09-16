//
//  GenreViewController.swift
//  JSON
//
//  Created by Полина Жарова on 8.09.22.
//

import UIKit
import Alamofire
class GenreViewController: UIViewController {

    @IBOutlet weak var genreTableView: UITableView!
    var arrayOfGenre: [Genre] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        
        let request = AF.request("https://api.themoviedb.org/3/genre/movie/list?api_key=6cde63f94256f35e302a61f1dd4b7524&language=en-US", method: .get)
        
        request.responseDecodable(of:TMDBGenre.self) { responce in
           
            do {
                self.arrayOfGenre = try responce.result.get().genres
                self.genreTableView.reloadData()

                } catch {
            }
            
            }
    

   
}
}
extension GenreViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayOfGenre.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = arrayOfGenre[indexPath.row].name
        cell.textLabel?.textAlignment = .center
        cell.backgroundColor = .yellow
        return cell
    }
    
    
}
