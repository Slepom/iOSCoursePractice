

import UIKit
import Alamofire
class MoviesDataViewController: UIViewController {
    
    @IBOutlet weak var tableViewMovies: UITableView!
    
    var arrayOfMovies: [Result] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let request = AF.request("https://api.themoviedb.org/3/trending/movie/day?api_key=6cde63f94256f35e302a61f1dd4b7524", method: .get)
        
        request.responseDecodable(of:TMDBRresponce.self) { responce in
           
            do {
                self.arrayOfMovies = try responce.result.get().results
                self.tableViewMovies.reloadData()

                } catch {
            }
         
            }
        }
        
        
        
        
        
        
        
    }
    
extension MoviesDataViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.arrayOfMovies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = arrayOfMovies[indexPath.row].title
        cell.textLabel?.textAlignment = .center

        return cell
    }
    
    
    
}





