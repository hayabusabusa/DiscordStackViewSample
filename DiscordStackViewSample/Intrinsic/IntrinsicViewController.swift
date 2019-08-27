//
//  IntrinsicViewController.swift
//  DiscordStackViewSample
//
//  Created by Yamada Shunya on 2019/08/27.
//  Copyright © 2019 Yamada Shunya. All rights reserved.
//

import UIKit

final class IntrinsicViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var contentLabel: UILabel!
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Intrinsic size"
    }
    
    // MARK - IBAction
    
    @IBAction func onSegmentChanged(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            contentLabel.text = ConstitutionStrings.short()
        case 1:
            contentLabel.text = ConstitutionStrings.long()
        default:
            break
        }
    }
}
