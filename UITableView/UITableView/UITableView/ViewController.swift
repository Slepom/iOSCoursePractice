//
//  ViewController.swift
//  UITableView
//
//  Created by Полина Жарова on 25.08.22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    let months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
    }


}

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return months.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "monthCell")!
        cell.textLabel?.text = "\(months[indexPath.row])"
        cell.textLabel?.textAlignment = .center
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //performSegue(withIdentifier: "ShowNewView", sender: self)
        let vc = storyboard?.instantiateViewController(withIdentifier: "GreenView") as? SecondViewController
        self.navigationController?.pushViewController(vc!, animated: true)
        vc?.name = "\(months[indexPath.row])"
        vc?.num = "\(indexPath.row + 1)"
        
    }
    
    //Вопрос: почему когда я пытаюсь сразу в лейбл добавить текст (пример: vc?.nameOfMonth.text = "\(months[indexPath.row])" ), то выдает крэш?
    
}
