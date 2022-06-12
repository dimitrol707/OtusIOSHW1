//
//  CustomTextView+UIKit.swift
//  OtusIOSHW1
//
//  Created by Дмитрий Мальцев on 12.06.2022.
//

import SwiftUI
import UIKit

struct CustomTextView: UIViewRepresentable {
    
    @Binding var text: String
    
    func makeCoordinator() -> CustomTextView.Coordinator {
        return Coordinator(text: $text)
    }
    
    func makeUIView(context: Context) -> UITextView {
        let textView = UITextView(frame: .zero)
        textView.layer.borderWidth = 2.0
        textView.layer.borderColor = UIColor.red.cgColor
        textView.layer.cornerRadius = 10
        textView.delegate = context.coordinator
        return textView
    }
    
    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.text = text
    }
    
    // MARK: - Coordinator
    class Coordinator: NSObject, UITextViewDelegate {
        var text: Binding<String>
        
        init(text: Binding<String>) {
            self.text = text
        }
        
        func textViewDidChange(_ textView: UITextView) {
            self.text.wrappedValue = textView.text
        }
    }
}
