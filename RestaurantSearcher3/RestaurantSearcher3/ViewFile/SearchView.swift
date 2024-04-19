//
//  SearchView.swift
//  RestaurantSearcher3
//
//  Created by 渡邊 翔矢 on 2024/04/16.
//

import SwiftUI

struct SearchView: View {
    @State var isShowSafari = false
    @State private var items: [ShopItem] = []
    @State private var selectionURL: URL?
    
    var body: some View {
        List(items) { item in
            Button {
                DispatchQueue.main.async {
                    selectionURL = item.urls
                    isShowSafari = true
                    print(item.urls)
                    print(selectionURL!)
                }
            } label: {
                HStack {
                    AsyncImage(url: item.urls) { image in
                        image.resizable()
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                    } placeholder: {
                        ProgressView()
                    }
                    DetailView(item: item)
                }
            }
        }
        .onAppear {
            Task {
                await fetchData()
            }
        }
        .sheet(isPresented: $isShowSafari) {
            SafariView(url: $selectionURL)
        }
    }
    
    @MainActor
    func fetchData() async {
        Task {
            do{
                let url = URL(string: "https://qiita.com/api/v2/items?page=1&per_page=10")!
                let (data, _) = try await URLSession.shared.data(from: url)
                let decodedItems = try JSONDecoder().decode([ShopItem].self, from: data)
                self.items = decodedItems
            } catch {
                print("Error fetching data: \(error)")
            }
        }
    }
}



