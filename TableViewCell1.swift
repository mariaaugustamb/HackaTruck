//
//  TableViewCell1.swift
//  Projeto Musicas
//
//  Created by student on 09/04/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class TableViewCell1: UITableViewCell {

    @IBOutlet weak var nomeMusicaUILabel: UILabel!
    
    
    @IBOutlet weak var nomeArtistaUILabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
