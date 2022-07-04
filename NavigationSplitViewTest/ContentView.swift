//
//  ContentView.swift
//  NavigationSplitViewTest
//
//  Created by Kenichi Takahashi on 2022/07/05.
//

import SwiftUI

struct ContentView: View {
    @State var visibility: NavigationSplitViewVisibility = .automatic
    
    var body: some View {
        NavigationSplitView(columnVisibility: $visibility) {
            Text("Side Bar")
            Button("Detail Only") {
                visibility = .detailOnly
            }
        } content: {
            Text("Main Content")
        } detail: {
            Text("Detail")
            Button("Show All") {
                visibility = .all
            }
        }
        .navigationSplitViewStyle(.prominentDetail)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
