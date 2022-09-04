//
//  ViewController.swift
//  UITableViewCustomDesign
//
//  Created by Полина Жарова on 27.08.22.
//

import UIKit

class ViewController: UIViewController {
   

    @IBOutlet weak var InstatableView: UITableView!
    
    var arrayofPost: [Post] = []
    override func viewDidLoad() {
        super.viewDidLoad()
       let nib = UINib(nibName: "InstagramTableViewCell", bundle: nil)
        self.InstatableView.register(nib, forCellReuseIdentifier: "InstagramTableViewCell")
        
        
        
        
        arrayofPost = [Post(avatarImageName: "avaCat", nameAccount: "CatMan", postImageName: "tree", viewsCount: 5_000, description: "Hi, people. Today i will show you my favourite place", countOfComments: 503, postedAt: "27 august 2022"), Post(avatarImageName: "avaGhost", nameAccount: "ghost", postImageName: "lake", viewsCount: 700_000, description: "What a fuck", countOfComments: 708_976, postedAt: "3 june 2022"), Post(avatarImageName: "avaGirl", nameAccount: "freedom_girl", postImageName: "green", viewsCount: 150_000, description: "congratulations on independence day", countOfComments: 500_000, postedAt: "24 august 2022")]
        
    }


}


extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayofPost.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "InstagramTableViewCell") as! InstagramTableViewCell
        cell.configure(arrayofPost[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        UITableView.automaticDimension
    }

}

