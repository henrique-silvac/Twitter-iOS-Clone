//
//  TweetCell.swift
//  Twitter iOS Clone
//
//  Created by Henrique Silva on 07/07/21.
//

import UIKit

class TweetCell: UICollectionViewCell {
    
    override init (frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
