//
//  NewTweetView.swift
//  VNConnect
//
//  Created by Apple on 3/29/24.
//

import SwiftUI

struct NewTweetView: View {
    @State private var caption = ""
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Cancel")
                        .fontWeight(.bold)
                        .foregroundColor(Color(.systemBlue))
                }
                
                Spacer()
                
                Button {
                    print("Tweet")
                } label: {
                    Text("Post")
                        .fontWeight(.bold)
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(Color(.systemBlue))
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                }
            }
            .padding()
        }
        
        HStack(alignment: .top) {
            Circle()
                .frame(width: 56, height: 56)
            
            TextArea("What are you thinking ...", text: $caption)
        }
        .padding()
    }
}


#Preview {
    NewTweetView()
}
