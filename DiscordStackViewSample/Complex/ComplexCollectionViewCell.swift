//
//  ComplexCollectionViewCell.swift
//  DiscordStackViewSample
//
//  Created by Yamada Shunya on 2019/08/27.
//  Copyright © 2019 Yamada Shunya. All rights reserved.
//

import UIKit

class ComplexCollectionViewCell: UICollectionViewCell {
    
    // MARK: - IBOutlet

    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    
    // MARK: - Properties
    
    static let reuseIdentifier = "ComplexCollectionViewCell"
    static let rowWidth: CGFloat = 180
    static var nib: UINib {
        return UINib(nibName: "ComplexCollectionViewCell", bundle: nil)
    }
    
    // MARK: - Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    // MARK: - UI
    
    func setupUI(_ item: ComplexItem) {
        mainImageView.image = UIImage(named: item.image)
        titleLabel.text = item.title
        contentLabel.text = item.desc
    }
}
