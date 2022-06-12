//
//  Tab1View.swift
//  OtusIOSHW1
//
//  Created by Дмитрий Мальцев on 12.06.2022.
//

import SwiftUI

struct Tab1View: View {
    @EnvironmentObject var homeVM: HomeViewModel
    var body: some View {
        Button(homeVM.books[0].name) {
            homeVM.selectedTab = .tab2
            homeVM.selectedBook = homeVM.books[0].id
        }
    }
}

struct Tab1View_Previews: PreviewProvider {
    static var previews: some View {
        Tab1View()
            .environmentObject(HomeViewModel())
    }
}
