//
//  HiddenViewController.swift
//  DiscordStackViewSample
//
//  Created by Yamada Shunya on 2019/08/27.
//  Copyright © 2019 Yamada Shunya. All rights reserved.
//

import UIKit

final class HiddenViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet var collections: [UIView]!
    
    private var isAnimating: Bool = false
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "isHidden"
        collections.enumerated().forEach { (offset, element) in
            element.tag = offset
        }
    }
    
    // MARK: - IBAction
    
    @IBAction func onValueChanged(_ sender: UISegmentedControl) {
        collections.forEach { [weak self] view in
            if view.tag == sender.selectedSegmentIndex {
                view.isHidden.toggle()
                
                if isAnimating {
                    UIView.animate(withDuration: 0.2, animations: {
                        self?.view.layoutIfNeeded()
                    })
                }
            }
        }
    }
    
    @IBAction func onSwitched(_ sender: UISwitch) {
        isAnimating.toggle()
    }
}
