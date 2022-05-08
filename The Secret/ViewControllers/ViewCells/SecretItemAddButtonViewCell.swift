//
//  SecretItemAddButtonViewCell.swift
//  The Secret
//
//  Created by Galih Laras Prakoso on 09/05/22.
//

import UIKit

class SecretItemAddButtonViewCell: UICollectionViewCell {
    
    static let name: String = "SecretItemAddButtonViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let addIcon = UIImageView()
        addIcon.contentMode = .scaleAspectFit
        addIcon.translatesAutoresizingMaskIntoConstraints = false
        addIcon.image = UIImage(named: "addbutton")
        
        contentView.addSubview(addIcon)
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "ADD SECRET"
        label.font = UIFont.boldSystemFont(ofSize: FontSize.small)
        contentView.addSubview(label)
        label.textColor = UIColor(hexaString: HexColor.primary)
                
        NSLayoutConstraint.activate([
            addIcon.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            addIcon.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: Spacing.small),
            addIcon.widthAnchor.constraint(equalToConstant: MediaDimension.small),
            addIcon.heightAnchor.constraint(equalToConstant: MediaDimension.small),
            
            label.leadingAnchor.constraint(equalTo: addIcon.trailingAnchor),
            label.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
        ])
        
        contentView.backgroundColor = UIColor.white
        contentView.layer.cornerRadius = BorderRadius.normal
        contentView.layer.masksToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
