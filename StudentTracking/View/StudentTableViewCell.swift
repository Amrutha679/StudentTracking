//
//  StudentTableViewCell.swift
//  StudentTracking
//
//  Created by amrutha on 08/12/20.
//  Copyright © 2020 amrutha. All rights reserved.
//

import UIKit

class StudentTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    var studentObj: StudentData? {
        
        didSet {
            cellDataSet()
        }
    }
    
    func cellDataSet() {
        
        nameLabel.text = studentObj?.name
        addressLabel.text = studentObj?.address
        
    }
    
}
