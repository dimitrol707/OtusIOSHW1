//
//  HomeViewModel.swift
//  OtusIOSHW1
//
//  Created by Дмитрий Мальцев on 12.06.2022.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var selectedTab: Tab = .tab1
    @Published var books: [Book] = [
        Book(name: "Война и мир"),
        Book(name: "Мастер и маргарита")
    ]
    @Published var selectedBook: UUID?
}
