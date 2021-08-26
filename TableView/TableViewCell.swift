//
//  TableViewCell.swift
//  TableView
//
//  Created by Mahmoud Fares on 29/06/2021.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet var tableLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
