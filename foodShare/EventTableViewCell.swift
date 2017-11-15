//
//  EventTableViewCell.swift
//  foodShare
//
//  Created by Sunita  Mansukhani on 1/22/17.
//  Copyright © 2017 Anmol Mansukhani. All rights reserved.
//

import UIKit

class EventTableViewCell: UITableViewCell {
    @IBOutlet weak var eventLabel: UILabel!
    @IBOutlet weak var eventDes: UILabel!
    @IBOutlet weak var servingsLabel: UILabel!
    @IBOutlet weak var servingsDes: UILabel!
    
  //  @IBOutlet weak var locationLabel: UILabel!

 //   @IBOutlet weak var locationDes: UILabel!
  //  @IBOutlet weak var timeLabel: UILabel!
    
 //   @IBOutlet weak var timeDes: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
