//
//  SecretItemViewCell.swift
//  The Secret
//
//  Created by Galih Laras Prakoso on 29/04/22.
//

import UIKit

class SecretItemViewCell: UICollectionViewCell {
    weak var iconView: UIImageView!
    weak var textLabel: UILabel!
    weak var textDescription: UILabel!
    
    static let name: String = "SecretItemViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let createdIconView = UIImageView()
        createdIconView.contentMode = .scaleAspectFit
        createdIconView.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(createdIconView)
        
        iconView = createdIconView
            
        
        iconView.layoutMargins = UIEdgeInsets(top: Spacing.normal, left: Spacing.normal, bottom: 0, right: Spacing.normal)
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(label)

        textLabel = label
        
        textLabel.text = "Instagram Account"
        textLabel.textColor = UIColor.gray
        textLabel.font = UIFont.boldSystemFont(ofSize: FontSize.normal)
        
        let description = UILabel()
        description.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(description)

        textDescription = description
        
        textDescription.text = "Thursday, 22 April 2022"
        textDescription.textColor = UIColor.gray
        textDescription.font = UIFont.systemFont(ofSize: FontSize.extraSmall)
        
        NSLayoutConstraint.activate([
            iconView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: Spacing.small),
            iconView.widthAnchor.constraint(equalToConstant: MediaDimension.normal),
            iconView.heightAnchor.constraint(equalToConstant: MediaDimension.normal),
            iconView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            
            textLabel.topAnchor.constraint(equalTo: iconView.bottomAnchor, constant: Spacing.small),
            textLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: Spacing.small),
            textLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            
            textDescription.topAnchor.constraint(equalTo: textLabel.bottomAnchor, constant: Spacing.extraSmall),
            textDescription.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: Spacing.small),
            textDescription.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
        ])
        
        contentView.backgroundColor = UIColor.white
        
        contentView.layer.cornerRadius = BorderRadius.normal
        contentView.layer.masksToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
