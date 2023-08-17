//
//  GraoTableViewCell.swift
//  caioThomaz_rm84377
//
//  Created by Caio Thomaz Nogueira on 07/06/23.
//

import UIKit

class GraoTableViewCell: UITableViewCell {

    @IBOutlet weak var ivGrao: UIImageView!
    @IBOutlet weak var lblGrao: UILabel!
    @IBOutlet weak var lblSummary: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
