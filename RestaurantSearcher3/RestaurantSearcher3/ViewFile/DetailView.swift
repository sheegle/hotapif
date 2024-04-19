//
//  DetailView.swift
//  RestaurantSearcher3
//
//  Created by 渡邊 翔矢 on 2024/04/19.
//

import SwiftUI

struct DetailView: View {
    let item: ShopItem
    var body: some View {
        
        Text(item.name)
        Text("address: \(item.address)")
        Text("urls: \(item.urls)")
    }
}
