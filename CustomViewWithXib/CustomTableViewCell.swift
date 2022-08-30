//
//  CustomTableViewCell.swift
//  CustomViewWithXib
//
//  Created by Mac on 30/06/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

 
    @IBOutlet weak var studentImage: UIImageView!
    
    @IBOutlet weak var studentIdLabel: UILabel!
    
    @IBOutlet weak var studentCource: UILabel!
    
    @IBOutlet weak var studentLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
