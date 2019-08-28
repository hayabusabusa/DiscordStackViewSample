//
//  ComplexViewController.swift
//  DiscordStackViewSample
//
//  Created by Yamada Shunya on 2019/08/27.
//  Copyright © 2019 Yamada Shunya. All rights reserved.
//

import UIKit

final class ComplexViewController: UIViewController {
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var layoutHelper: UIView!
    @IBOutlet weak var saladTitleLabel: UILabel!
    @IBOutlet weak var layoutSalad: UIView!
    @IBOutlet weak var saladTextView: UITextView!
    @IBOutlet weak var dishTitleLabel: UILabel!
    @IBOutlet weak var layoutDish: UIView!
    @IBOutlet weak var dishTextView: UITextView!
    @IBOutlet weak var dessertTitleLabel: UILabel!
    @IBOutlet weak var layoutDessert: UIView!
    @IBOutlet weak var dessertTextView: UITextView!
    
    // MARK: - Properties
    
    private lazy var saladCollectionVC: ComplexCollectionViewController = .init(dataSource: ComplexItemProvider.saladList())
    private lazy var dishCollectionVC: ComplexCollectionViewController = .init(dataSource: ComplexItemProvider.dishList())
    private lazy var dessertCollectionVC: ComplexCollectionViewController = .init(dataSource: ComplexItemProvider.dessertList())
    private var isShow: Bool = true
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        layout()
    }
    
    // MARK: - Tap event
    
    @objc func onTapBarButton(_ sender: UIBarButtonItem) {
        sender.title = isShow ? "Hide" : "Show"
        saladTitleLabel.superview?.backgroundColor = isShow ? .blue : .clear
        layoutSalad.backgroundColor = isShow ? .green : .clear
        saladTextView.superview?.backgroundColor = isShow ? .red : .clear
        dishTitleLabel.superview?.backgroundColor = isShow ? .blue : .clear
        layoutDish.backgroundColor = isShow ? .green : .clear
        dishTextView.superview?.backgroundColor = isShow ? .red : .clear
        dessertTitleLabel.superview?.backgroundColor = isShow ? .blue : .clear
        layoutDessert.backgroundColor = isShow ? .green : .clear
        dessertTextView.superview?.backgroundColor = isShow ? .red : .clear
        UIView.animate(withDuration: 0.2, animations: { self.layoutHelper.isHidden.toggle() })
        isShow.toggle()
    }
}

// MARK: - UI

extension ComplexViewController {
    
    func setupUI() {
        // Navigation
        navigationItem.title = "Complex"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Show", style: .plain, target: self, action: #selector(onTapBarButton(_:)))
        
        layoutSalad.addSubview(saladCollectionVC.view)
        addChild(saladCollectionVC)
        layoutDish.addSubview(dishCollectionVC.view)
        addChild(dishCollectionVC)
        layoutDessert.addSubview(dessertCollectionVC.view)
        addChild(dessertCollectionVC)
    }
}

// MARK: - Layout

extension ComplexViewController {
    
    func layout() {
        // Salad
        NSLayoutConstraint.activate([
            saladCollectionVC.view.topAnchor.constraint(equalTo: layoutSalad.topAnchor, constant: 0),
            saladCollectionVC.view.leadingAnchor.constraint(equalTo: layoutSalad.leadingAnchor, constant: 0),
            saladCollectionVC.view.trailingAnchor.constraint(equalTo: layoutSalad.trailingAnchor, constant: 0),
            saladCollectionVC.view.bottomAnchor.constraint(equalTo: layoutSalad.bottomAnchor, constant: 0)
            ])
        
        // Dish
        NSLayoutConstraint.activate([
            dishCollectionVC.view.topAnchor.constraint(equalTo: layoutDish.topAnchor, constant: 0),
            dishCollectionVC.view.leadingAnchor.constraint(equalTo: layoutDish.leadingAnchor, constant: 0),
            dishCollectionVC.view.trailingAnchor.constraint(equalTo: layoutDish.trailingAnchor, constant: 0),
            dishCollectionVC.view.bottomAnchor.constraint(equalTo: layoutDish.bottomAnchor, constant: 0)
            ])
        
        // Dessert
        NSLayoutConstraint.activate([
            dessertCollectionVC.view.topAnchor.constraint(equalTo: layoutDessert.topAnchor, constant: 0),
            dessertCollectionVC.view.leadingAnchor.constraint(equalTo: layoutDessert.leadingAnchor, constant: 0),
            dessertCollectionVC.view.trailingAnchor.constraint(equalTo: layoutDessert.trailingAnchor, constant: 0),
            dessertCollectionVC.view.bottomAnchor.constraint(equalTo: layoutDessert.bottomAnchor, constant: 0)
            ])
    }
}
