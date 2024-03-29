//
//  FeedView.swift
//  VNConnect
//
//  Created by Apple on 3/20/24.
//

import SwiftUI

struct FeedView: View {
    @State private var showNewTweetView = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                LazyVStack{
                    ForEach(0 ... 30, id: \.self) {
                        _ in
                        TweetRowView()
                            .padding()
                    }
                }
            }
            
            Button {
                showNewTweetView.toggle()
            } label: {
                Image(systemName: "square.and.pencil")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 28, height: 28)
                    .padding()
                    .fontWeight(.bold)
            }
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .padding()
            .fullScreenCover(isPresented: $showNewTweetView) {
                NewTweetView()
            }
        }
    }
}

#Preview {
    FeedView()
}
