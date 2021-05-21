//
//  ShoeCell.swift
//  Sneakerscape
//
//  Created by Sebastian on 5/20/21.
//

import UIKit

class ShoeCell: UITableViewCell {

    @IBOutlet weak var shoeBrand: UILabel!
    @IBOutlet weak var shoeName: UILabel!
    @IBOutlet weak var shoePoster: UIImageView!
    @IBOutlet weak var shoeInfo: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
