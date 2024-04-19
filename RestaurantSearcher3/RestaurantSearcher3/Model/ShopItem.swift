//
//  ShopItem.swift
//  RestaurantSearcher3
//
//  Created by 渡邊 翔矢 on 2024/04/19.
//

import Foundation
import SwiftUI

struct ShopItem: Decodable, Identifiable {
    var id = UUID()
    var address: String
    let name: String
    let urls: URL
    let logoimage: URL
    
    
    enum CodingKeys: String, CodingKey {
        case id
        case address
        case name
        case urls
        case logoimage = "logo_image"
        
    }
}


