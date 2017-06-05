//
//  TransportCategoryRow.swift
//  Transportation
//
//  Created by Wismin Effendi on 6/5/17.
//  Copyright © 2017 iShinobi. All rights reserved.
//

import UIKit

class TransportCategoryRow: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension TransportCategoryRow: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 9
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TransportationCell", for: indexPath)
        
        return cell
    }
}


extension TransportCategoryRow: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let itemPerRow: CGFloat = 3
        let hardCodedPadding: CGFloat = 5
        let itemWidth = (collectionView.bounds.width / itemPerRow) - hardCodedPadding
        let itemHeight = collectionView.bounds.height - (2 * hardCodedPadding)
        return CGSize(width: itemWidth, height: itemHeight)
    }
    
}
