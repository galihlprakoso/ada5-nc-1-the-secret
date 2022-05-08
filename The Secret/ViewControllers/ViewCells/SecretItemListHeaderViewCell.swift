//
//  SecretItemListHeaderViewCell.swift
//  The Secret
//
//  Created by Galih Laras Prakoso on 08/05/22.
//

import UIKit

class SecretItemListHeaderViewCell: UICollectionViewCell {
    weak var logoView: UIImageView!
    static let name: String = "SecretItemListHeaderViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let createdLogoView = UIImageView(image: UIImage(named: "AppLogo"))
        contentView.addSubview(createdLogoView)
        logoView = createdLogoView
        
        logoView.contentMode = .scaleAspectFit
        logoView.translatesAutoresizingMaskIntoConstraints = false
        
        let titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(titleLabel)
        titleLabel.text = "THE SECRET"
        titleLabel.font = UIFont.boldSystemFont(ofSize: FontSize.large)
        titleLabel.textColor = UIColor.white
        
        let subtitleLabel = UILabel()
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(subtitleLabel)
        subtitleLabel.text = "Let me keep your secrets."
        subtitleLabel.font = UIFont.systemFont(ofSize: FontSize.small)
        subtitleLabel.textColor = UIColor.white
        
        NSLayoutConstraint.activate([
            logoView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            logoView.topAnchor.constraint(equalTo: contentView.topAnchor),
            logoView.widthAnchor.constraint(equalToConstant: MediaDimension.small),
            logoView.heightAnchor.constraint(equalToConstant: MediaDimension.normal),
            
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: Spacing.small),
            titleLabel.topAnchor.constraint(equalTo: logoView.bottomAnchor, constant: Spacing.normal),
            
            subtitleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: Spacing.small),
            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: Spacing.small),
        ])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
