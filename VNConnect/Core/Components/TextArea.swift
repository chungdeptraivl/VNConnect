//
//  TextArea.swift
//  VNConnect
//
//  Created by Apple on 3/29/24.
//

import SwiftUI

struct TextArea: View {
    @Binding var text: String
    let placeholder: String
    
    init(_ placeholder: String, text: Binding<String>) {
        self.placeholder = placeholder
        self._text = text
    }
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            if text.isEmpty {
                Text(placeholder)
                    .foregroundColor(Color(.placeholderText))
                    .padding(.horizontal, 8)
                    .padding(.vertical, 12)
            }
            
            TextEditor(text: $text)
                .padding(4)
                .foregroundColor(.primary)
                .background(Color.clear)
        }
        .font(.body)
    }
}




//#Preview {
//    TextArea()
//}
