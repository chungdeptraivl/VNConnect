//
//  UserStatsView.swift
//  VNConnect
//
//  Created by Apple on 3/23/24.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack(spacing: 24) {
            HStack(spacing: 4) {
                Text("1000")
                    .font(.subheadline).bold()
                
                Text("Following")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            HStack(spacing: 4) {
                Text("100")
                    .font(.subheadline).bold()
                
                Text("Followers")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
    }
}

#Preview {
    UserStatsView()
}
