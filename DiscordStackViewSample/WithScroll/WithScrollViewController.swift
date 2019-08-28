//
//  WithScrollViewController.swift
//  DiscordStackViewSample
//
//  Created by Yamada Shunya on 2019/08/27.
//  Copyright © 2019 Yamada Shunya. All rights reserved.
//

import UIKit

final class WithScrollViewController: UIViewController {
    
    // MARK: - Properties
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "with ScrollView"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .refresh, target: self, action: #selector(refresh(_:)))
        
        let dict = ConstitutionStrings.dictionary()
        titleLabel.text = dict.key
        contentLabel.text = dict.value
    }
    
    @objc func refresh(_ sender: UIBarButtonItem) {
        let dict = ConstitutionStrings.dictionary()
        titleLabel.text = dict.key
        contentLabel.text = dict.value
    }
}
