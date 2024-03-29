//
//  SideMenuOptionRowView.swift
//  VNConnect
//
//  Created by Apple on 3/29/24.
//

import SwiftUI

struct SideMenuOptionRowView: View {
    let viewModel: SideMenuViewModel
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: viewModel.image)
                .font(.headline)
                .foregroundColor(.gray)
            
            Text(viewModel.sidebar)
                .font(.subheadline)
                .foregroundColor(.black)
            Spacer()
        }
        .frame(height: 40)
        .padding(.horizontal)
    }
}

#Preview {
    SideMenuOptionRowView(viewModel: .profile)
}
