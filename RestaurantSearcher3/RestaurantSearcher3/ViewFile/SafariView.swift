//
//  SafariView.swift
//  RestaurantSearcher3
//
//  Created by 渡邊 翔矢 on 2024/04/19.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    @Binding var url: URL?
    
    func makeUIViewController(context: Context) -> some UIViewController {
        return SFSafariViewController(url: url!)
    }
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}
