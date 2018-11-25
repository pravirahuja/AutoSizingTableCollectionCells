//
//  CollectionViewCell.swift
//  TestSample
//
//  Created by Pravir  on 25/11/18.
//  Copyright © 2018 Pravir . All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var containerViewWidthConstraint: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.contentView.translatesAutoresizingMaskIntoConstraints = false
        let screenWidth = UIScreen.main.bounds.size.width
        containerViewWidthConstraint.constant = screenWidth - (2*12)
        // 12 = section Insets left,right Value of collectionView set previously by you in storyboard
        
    }
}
