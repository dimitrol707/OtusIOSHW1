//
//  Tab2View.swift
//  OtusIOSHW1
//
//  Created by Дмитрий Мальцев on 12.06.2022.
//

import SwiftUI

struct Tab2View: View {
    @EnvironmentObject var homeVM: HomeViewModel
    var body: some View {
        NavigationView {
            List {
                ForEach(homeVM.books, id: \.id) {
                    book in
                    NavigationLink(book.name, tag: book.id, selection: $homeVM.selectedBook ) {
                        BookView(book: book)
                    }
                }
            }
        }
    }
}

struct Tab2View_Previews: PreviewProvider {
    static var previews: some View {
        Tab2View()
            .environmentObject(HomeViewModel())
    }
}
