//
//  AdvancedViewController.swift
//  DiscordStackViewSample
//
//  Created by Yamada Shunya on 2019/08/28.
//  Copyright © 2019 Yamada Shunya. All rights reserved.
//

import UIKit

final class AdvancedViewController: UIViewController {
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var layoutSettings: UIView!
    @IBOutlet weak var contentLabel: UILabel!
    
    // MARK: - Properties
    
    private var isLong: Bool = false
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Advanced"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Setting", style: .plain, target: self, action: #selector(onTapSetting(_:)))
    }
    
    // MARK - Tap event
    
    @objc func onTapSetting(_ sender: UIBarButtonItem) {
        UIView.animate(withDuration: 0.3, animations: { self.layoutSettings.isHidden.toggle() })
    }
    
    @IBAction func onValueChanged(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            isLong = false
        case 1:
            isLong = true
        default:
            break
        }
        contentLabel.text = isLong ? "Dessert (/dɪˈzɜːrt/) is a course that concludes a meal. The course usually consists of sweet foods, such as confections dishes or fruit, and possibly a beverage such as dessert wine or liqueur; however, in the United States it may include coffee, cheeses, nuts, or other savory items regarded as a separate course elsewhere. In some parts of the world, such as much of central and western Africa, and most parts of China, there is no tradition of a dessert course to conclude a meal.The term dessert can apply to many confections, such as biscuits, cakes, cookies, custards, gelatins, ice creams, pastries, pies, puddings, sweet soups, and tarts. Fruit is also commonly found in dessert courses because of its naturally occurring sweetness. Some cultures sweeten foods that are more commonly savory to create desserts. \n\nSweet desserts usually contain cane sugar, palm sugar, honey or some types of syrup such as molasses, maple syrup, treacle, or corn syrup. Other common ingredients in Western-style desserts are flour or other starches, Cooking fats such as butter or lard, dairy, eggs, salt, acidic ingredients such as lemon juice, and spices and other flavoring agents such as chocolate, peanut butter, fruits, and nuts. The proportions of these ingredients, along with the preparation methods, play a major part in the consistency, texture, and flavor of the end product." : "Dessert (/dɪˈzɜːrt/) is a course that concludes a meal. The course usually consists of sweet foods, such as confections dishes or fruit, and possibly a beverage such as dessert wine or liqueur; however, in the United States it may include coffee, cheeses, nuts, or other savory items regarded as a separate course elsewhere. In some parts of the world, such as much of central and western Africa, and most parts of China, there is no tradition of a dessert course to conclude a meal."
    }
}
