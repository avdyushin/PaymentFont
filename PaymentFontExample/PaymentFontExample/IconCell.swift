//
//  IconCell.swift
//  PaymentFontExample
//
//  Created by Grigory Avdyushin on 11.07.16.
//  Copyright © 2016 Grigory Avdyushin. All rights reserved.
//

import UIKit
import PaymentFont

class IconCell: UITableViewCell {
    
    @IBOutlet weak var iconLabel: UILabel! {
        didSet {
            iconLabel.font = PaymentFont.font(size: 32)
        }
    }
    
}
