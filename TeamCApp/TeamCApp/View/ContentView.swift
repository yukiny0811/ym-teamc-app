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
                Section("日付") {
                    Text(farm.date.formatted(.dateTime.year().month().day()))
                }
                Section("農園の様子") {
                    Image(uiImage: farm.image.jpeg()!)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                Section("特徴") {
                    Text(farm.tokuchou)
                }
                Section("おすすめポイント") {
                    Text(farm.osusumePoint)
                }
                Section("場所") {
                    Map {
                        Annotation(
                            coordinate: .init(
                                latitude: farm.mapLocationLat,
                                longitude: farm.mapLocationLong
                            )
                        ) {
                            ZStack {
                                Image(systemSymbol: .tree)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 50)
                            }
                        } label: {
                            Text("農園")
                        }
                    }
                    .frame(height: 200)
                }
                Section("当日の流れ") {
                    ForEach(farm.nagare) { n in
                        Text(n)
                    }
                }
                Section("予約する") {
                    Button("予約する") {
                        let topVC = UIApplication.topViewController()!
                        let yoyakuVC = YoyakuViewController(farm: farm) {
                            countdownViewController.reload()
                        }
                        topVC.present(yoyakuVC,animated: true)
                    }
                }
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
