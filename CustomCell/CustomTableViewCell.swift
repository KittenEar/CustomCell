//
//  CustomTableViewCell.swift
//  CustomCell
//
//  Created by cat-07 on 2016/03/02.
//  Copyright © 2016年 cat-07. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var customNameLabel: UILabel!
    @IBOutlet weak var customIdLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
}
