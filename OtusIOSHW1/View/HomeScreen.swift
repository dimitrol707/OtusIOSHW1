//
//  HomeScreen.swift
//  OtusIOSHW1
//
//  Created by Дмитрий Мальцев on 12.06.2022.
//

import SwiftUI

enum Tab: Int {
    case tab1 = 0
    case tab2
    case tab3
}

struct HomeScreen: View {
    @EnvironmentObject var homeVM: HomeViewModel
    var body: some View {
        TabView(selection: $homeVM.selectedTab) {
            Tab1View()
                .tabItem {Label("Tab 1", systemImage: "book")
                }
                .tag(Tab.tab1)
            Tab2View()
                .tabItem {Label("Tab 2", systemImage: "doc")
                }
                .tag(Tab.tab2)
            Tab3View()
                .tabItem {Label("Tab 3", systemImage: "person")
                }
                .tag(Tab.tab3)
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone 13", "iPad Pro (11-inch) (3rd generation)"], id: \.self) {
            item in
            HomeScreen()
                .environmentObject(HomeViewModel())
                .previewDevice(PreviewDevice(rawValue: item))
        }
        HomeScreen()
            .environmentObject(HomeViewModel())
            .previewDevice(PreviewDevice(rawValue: "iPad Pro (11-inch) (3rd generation)"))
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
