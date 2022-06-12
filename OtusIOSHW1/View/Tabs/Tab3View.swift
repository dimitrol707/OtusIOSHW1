//
//  Tab3View.swift
//  OtusIOSHW1
//
//  Created by Дмитрий Мальцев on 12.06.2022.
//

import SwiftUI
import UIComponent

struct Tab3View: View {
    @State private var isPresented: Bool = false
    @State private var text: String = ""
    var body: some View {
        Button("Модальное Окно") {
            text = ""
            isPresented = true
        }
        .sheet(isPresented: $isPresented) {
            VStack {
                Text(text)
                CustomTextView(text: $text)
            }
            .padding(10)
        }
    }
}

struct Tab3View_Previews: PreviewProvider {
    static var previews: some View {
        Tab3View()
    }
}
