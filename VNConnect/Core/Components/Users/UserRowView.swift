//
//  UserRowView.swift
//  VNConnect
//
//  Created by Apple on 3/20/24.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        
        //component nguoi dung khi tim kiem
        HStack(spacing: 12) {
            Circle()
                .frame(width: 48, height: 48)
            
            VStack(alignment: .leading) {
                Text("Thanh Chung")
                    .font(.subheadline).bold()
                    .foregroundColor(.black)
                
                Text("@tconthemic")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

#Preview {
    UserRowView()
}
