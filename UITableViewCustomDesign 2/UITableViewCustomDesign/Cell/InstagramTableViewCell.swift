//
//  InstagramTableViewCell.swift
//  UITableViewCustomDesign
//
//  Created by Полина Жарова on 27.08.22.
//

import UIKit

class InstagramTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var nameAvatar: UILabel!
    @IBOutlet weak var bigImage: UIImageView!
    
    @IBOutlet weak var viewsCount: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
   
    @IBOutlet weak var countOfComments: UILabel!
    
    
    @IBOutlet weak var postedAt: UILabel!
    
    func configure(_ post: Post){
        avatarImage.layer.cornerRadius = avatarImage.frame.width/2
        avatarImage.image = UIImage(named: post.avatarImageName)
        nameAvatar.text = post.nameAccount
        bigImage.image = UIImage(named: post.postImageName)
        bigImage.contentMode = .scaleAspectFill
        viewsCount.text = String(post.viewsCount) + " " + "view"
        nameAvatar.font = UIFont.boldSystemFont(ofSize: 16)
        viewsCount.font = UIFont.boldSystemFont(ofSize: 16)
        descriptionLabel.text = nameAvatar.text! + " " + post.description
        countOfComments.text = "View all " + String(post.countOfComments) + " comments"
        postedAt.text = post.postedAt
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

      
    }
    
}
