//
//  ContentView.swift
//  TeamCApp
//
//  Created by Yuki Kuwashima on 2023/11/29.
//

import SwiftUI
import TeamCLibrary

struct MainView: View {
    
    let countdownViewController = UICountdownViewController()
    
    var farmListView: some View {
        FarmListView(farms: FarmData.farms) { farm in
            List {
                Section("セクション") {
                    Text("文字文字")
                }
                //ここに追記していこう！
            }
        }
    }
    
    var body: some View {
        TabView {
            NavigationStack {
                farmListView
            }
            .tabItem {
                Image(systemSymbol: .calendar)
            }
            
            NavigationStack {
                CountdownView(viewController: countdownViewController)
            }
            .tabItem {
                Image(systemSymbol: .gamecontroller)
            }
        }
    }
}

#Preview {
    MainView()
}
