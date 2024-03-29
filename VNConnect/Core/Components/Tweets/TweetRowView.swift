//
//  TweetRowView.swift
//  VNConnect
//
//  Created by Apple on 3/20/24.
//

import SwiftUI

struct TweetRowView: View {
    var body: some View {
        // ảnh đại diện, thông tin tài khoản, nội dung bài viết
        VStack(alignment: .leading) {
            HStack(alignment: .top, spacing: 12) {
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color(.systemBlue))
                
                // Thong tin tài khoản và caption
                VStack(alignment: .leading, spacing: 4 ){
                    // Thong tin tai khoan
                    HStack {
                        Text("Nguyen Thanh Chung")
                            .font(.subheadline).bold()
                        Text("@tconthemic")
                            .font(.caption)
                            .foregroundColor(.gray)
                        Text("2W")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    
                    // Caption
                    Text("Xinh gai lam on dung buon !!!")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
            }
            
            // Action buttons
            HStack {
                Button {
                    
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                }
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                }
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
                }
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "bookmark")
                        .font(.subheadline)
                }
            }
            .padding()
            .foregroundColor(.gray)
            
            Divider()
        }
    }
}

#Preview {
    TweetRowView()
}
