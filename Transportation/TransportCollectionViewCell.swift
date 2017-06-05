//
//  TransportCollectionViewCell.swift
//  Transportation
//
//  Created by Wismin Effendi on 6/5/17.
//  Copyright © 2017 iShinobi. All rights reserved.
//

import UIKit

class TransportCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    var transporter: Transporter? {
        didSet {
            if let transporter = transporter {
                print(transporter.imageName)
                imageView.image = UIImage(named: transporter.imageName)
            }
        }
    }
    
}
