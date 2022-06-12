//
//  BookView.swift
//  OtusIOSHW1
//
//  Created by Дмитрий Мальцев on 12.06.2022.
//

import SwiftUI

struct BookView: View {
    var book: Book
    var body: some View {
        Text(book.name)
            .navigationTitle(book.name)
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct BookView_Previews: PreviewProvider {
    static var previews: some View {
        BookView(book: Book(name: "Война и мир"))
    }
}
