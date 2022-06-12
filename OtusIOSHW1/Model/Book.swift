//
//  Book.swift
//  OtusIOSHW1
//
//  Created by Дмитрий Мальцев on 12.06.2022.
//

import Foundation

struct Book: Hashable, Identifiable {
    let id = UUID()
    let name: String
}
