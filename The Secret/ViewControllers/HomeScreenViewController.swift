//
//  HomeScreenViewController.swift
//  The Secret
//
//  Created by Galih Laras Prakoso on 29/04/22.
//

import UIKit

class HomeScreenViewController: UIViewController {
    weak var collectionView: UICollectionView!
    
    override func loadView() {
        super.loadView()
        
        let cv = UICollectionView(frame: CGRect.zero, collectionViewLayout: PinterestLayout())
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.backgroundColor = UIColor(hexaString: HexColor.primary)
        cv.contentInset = UIEdgeInsets(top: Spacing.normal, left: Spacing.normal, bottom: Spacing.normal, right: Spacing.normal)
        
        view.addSubview(cv)
        
        NSLayoutConstraint.activate([
            cv.topAnchor.constraint(equalTo: view.topAnchor),
            cv.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            cv.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            cv.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
        
        self.collectionView = cv
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let layout = collectionView?.collectionViewLayout as? PinterestLayout {
          layout.delegate = self
        }
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(SecretItemViewCell.self, forCellWithReuseIdentifier: SecretItemViewCell.name)
        collectionView.register(
            SecretItemAddButtonViewCell.self,
            forCellWithReuseIdentifier: SecretItemAddButtonViewCell.name
        )
        collectionView.register(
            SecretItemListHeaderViewCell.self,
            forCellWithReuseIdentifier: SecretItemListHeaderViewCell.name
        )
    }
}

extension HomeScreenViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return SecretItem.secretItems.count + 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if (indexPath.item == 0) {
            return collectionView.dequeueReusableCell(withReuseIdentifier: SecretItemListHeaderViewCell.name, for: indexPath)
        }
        
        if (indexPath.item == 1) {
            return collectionView.dequeueReusableCell(withReuseIdentifier: SecretItemAddButtonViewCell.name, for: indexPath)
        }
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SecretItemViewCell.name, for: indexPath) as! SecretItemViewCell
        
        let secretItem = SecretItem.secretItems[indexPath.item - 2]
        cell.iconView.image = UIImage(named: secretItem.iconName)
        cell.textLabel.text = secretItem.title
        cell.textDescription.text = secretItem.date

        return cell
    }
}

extension HomeScreenViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return Spacing.normal
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}

extension HomeScreenViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if (indexPath.item == 1) {
            let viewController:UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecretFormViewController") as UIViewController
            self.navigationController?.pushViewController(viewController, animated: true)
        }
    }
}

extension HomeScreenViewController: PinterestLayoutDelegate {
  func collectionView(
    _ collectionView: UICollectionView,
    heightForPhotoAtIndexPath indexPath:IndexPath) -> CGFloat {
    if (indexPath.item == 0) {
        return MediaDimension.normal * 1.8
    }
    if (indexPath.item == 1) {
        return MediaDimension.small
    }
    return (collectionView.bounds.size.width / 2) - (1.5 * Spacing.normal)
  }
}

