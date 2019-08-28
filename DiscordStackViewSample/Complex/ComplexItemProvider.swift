//
//  ComplexItemProvider.swift
//  DiscordStackViewSample
//
//  Created by Yamada Shunya on 2019/08/27.
//  Copyright © 2019 Yamada Shunya. All rights reserved.
//

import Foundation

struct ComplexItem {
    let image: String
    let title: String
    let desc: String
}

struct ComplexItemProvider {
    
    static private let salads: [ComplexItem] = [
        ComplexItem(image: "salad1", title: "Salad One", desc: "About salad one"),
        ComplexItem(image: "salad2", title: "Salad Two", desc: "About salad two"),
        ComplexItem(image: "salad3", title: "Salad Three", desc: "About salad three"),
        ComplexItem(image: "salad4", title: "Salad Four", desc: "About salad four")
    ]
    
    static private let dishes: [ComplexItem] = [
        ComplexItem(image: "dish1", title: "Dish One", desc: "About dish one."),
        ComplexItem(image: "dish2", title: "Dish Two", desc: "Super delicious dish."),
        ComplexItem(image: "dish3", title: "Dish Three", desc: "魅惑の炭水化物"),
        ComplexItem(image: "dish4", title: "Dish Four", desc: "最高級の炭水化物"),
        ComplexItem(image: "dish5", title: "Dish Four", desc: "Main dish")
    ]
    
    static private let desserts: [ComplexItem] = [
        ComplexItem(image: "dessert1", title: "Dessert One", desc: "About dessert one"),
        ComplexItem(image: "dessert2", title: "Dessert Two", desc: "About dessert two"),
        ComplexItem(image: "dessert3", title: "Dessert Three", desc: "About dessert three"),
        ComplexItem(image: "dessert4", title: "Dessert Four", desc: "About dessert four")
    ]
    
    static func salad() -> ComplexItem {
        return salads[Int.random(in: 0..<salads.count)]
    }
    
    static func saladList() -> [ComplexItem] {
        var list: [ComplexItem] = []
        for _ in 0 ..< 10 {
            list.append(salad())
        }
        return list
    }
    
    static func dish() -> ComplexItem {
        return dishes[Int.random(in: 0..<dishes.count)]
    }
    
    static func dishList() -> [ComplexItem] {
        var list: [ComplexItem] = []
        for _ in 0 ..< 10 {
            list.append(dish())
        }
        return list
    }
    
    static func dessert() -> ComplexItem {
        return desserts[Int.random(in: 0..<desserts.count)]
    }
    
    static func dessertList() -> [ComplexItem] {
        var list: [ComplexItem] = []
        for _ in 0 ..< 10 {
            list.append(dessert())
        }
        return list
    }
}
