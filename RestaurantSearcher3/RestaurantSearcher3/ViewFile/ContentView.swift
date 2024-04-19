//
//  ContentView.swift
//  RestaurantSearcher3
//
//  Created by 渡邊 翔矢 on 2024/04/16.
//

import SwiftUI

struct ContentView: View {
    @State var inputText = ""
    @State private var radius: Double = 2.0
    
    var body: some View {
        VStack {
            TextField("キーワード",
                      text: $inputText,
                      prompt: Text("キーワードを入力して下さい"))
            .padding()
            Text("検索半径: \(radius) km")
            
            Slider(value: $radius, in: 1.0...10.0, step: 2.0)
            
            Button(action: {
                // 検索ボタンが押された時の処理を記述する
                // 条件を絞った上で検索する処理を記述する
                SearchView()
                
            }) {
                Text("検索")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
