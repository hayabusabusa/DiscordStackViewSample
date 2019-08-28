//
//  ComplexCollectionViewController.swift
//  DiscordStackViewSample
//
//  Created by Yamada Shunya on 2019/08/27.
//  Copyright © 2019 Yamada Shunya. All rights reserved.
//

import UIKit

final class ComplexCollectionViewController: UIViewController {
    
    // MARK: - Properties
    
    private var dataSource: [ComplexItem]
    
    // MARK: - UI Components
    
    private lazy var collectionView: UICollectionView = {
        let flowLayout: UICollectionViewFlowLayout = {
            let flowLayout = UICollectionViewFlowLayout()
            flowLayout.sectionInset = UIEdgeInsets(top: 0, left: 24, bottom: 0, right: 0)
            flowLayout.minimumLineSpacing = 8
            flowLayout.minimumInteritemSpacing = 0
            flowLayout.scrollDirection = .horizontal
            return flowLayout
        }()
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.clipsToBounds = true
        collectionView.backgroundColor = .clear
        collectionView.keyboardDismissMode = .onDrag
        //collectionView.isPagingEnabled = true
        collectionView.showsVerticalScrollIndicator = false
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.register(ComplexCollectionViewCell.nib, forCellWithReuseIdentifier: ComplexCollectionViewCell.reuseIdentifier)
        return collectionView
    }()
    
    // MARK: - Lifecycle
    
    init(dataSource: [ComplexItem]) {
        self.dataSource = dataSource
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(collectionView)
        collectionView.dataSource = self
        collectionView.delegate = self
        layout()
    }
}

// MARK: - Layout

extension ComplexCollectionViewController {
    
    private func layout() {
        collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        collectionView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}

// MARK: - CollectionView dataStource, delegate

extension ComplexCollectionViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ComplexCollectionViewCell.reuseIdentifier, for: indexPath) as! ComplexCollectionViewCell
        cell.setupUI(dataSource[indexPath.row])
        //print("\(self) CollectionView resuse at \(indexPath)")
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: ComplexCollectionViewCell.rowWidth, height: collectionView.bounds.size.height)
    }
}
