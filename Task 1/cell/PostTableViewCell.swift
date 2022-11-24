//
//  PostTableViewCell.swift
//  Task 1
//
//  Created by Ogabek Matyakubov on 24/11/22.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    
    // MARK: - Outpets
    
    @IBOutlet weak var ivProfile: UIImageView!
    @IBOutlet weak var tvFullName: UILabel!
    @IBOutlet weak var ivFirstPostMedia: UIImageView!
    @IBOutlet weak var ivSecondPostMedia: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
