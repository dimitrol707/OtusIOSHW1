//
//  CustomTextView+UIKit.swift
//  OtusIOSHW1
//
//  Created by Дмитрий Мальцев on 12.06.2022.
//

import SwiftUI
import UIKit

public struct CustomTextView: UIViewRepresentable {
    
    @Binding private var text: String
    
    public init(text: Binding<String>) {
        _text = text
    }
    
    public func makeCoordinator() -> CustomTextView.Coordinator {
        return Coordinator(text: $text)
    }
    
    public func makeUIView(context: Context) -> UITextView {
        let textView = UITextView(frame: .zero)
        textView.layer.borderWidth = 2.0
        textView.layer.borderColor = UIColor.red.cgColor
        textView.layer.cornerRadius = 10
        textView.delegate = context.coordinator
        return textView
    }
    
    public func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.text = text
    }
    
    // MARK: - Coordinator
    public class Coordinator: NSObject, UITextViewDelegate {
        public var text: Binding<String>
        
        public init(text: Binding<String>) {
            self.text = text
        }
        
        public func textViewDidChange(_ textView: UITextView) {
            self.text.wrappedValue = textView.text
        }
    }
}
