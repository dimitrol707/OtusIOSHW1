//
//  ContentView.swift
//  OtusIOSHW1
//
//  Created by Дмитрий Мальцев on 12.06.2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var homeVM: HomeViewModel = .init()
    var body: some View {
        HomeScreen()
            .environmentObject(homeVM)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(HomeViewModel())
    }
}
