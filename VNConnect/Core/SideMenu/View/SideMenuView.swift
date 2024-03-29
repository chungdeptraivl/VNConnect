//
//  SideMenuView.swift
//  VNConnect
//
//  Created by Apple on 3/20/24.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 32) {
                VStack(alignment: .leading) {
                    Circle()
                        .frame(width: 48, height: 48)
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Nguyen Thanh Chung")
                            .font(.headline)
                        
                        Text("@tconthemic")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    
                    UserStatsView()
                        .padding(.vertical)
                }
                .padding(.leading)
                
                ForEach(SideMenuViewModel.allCases, id: \.rawValue) {
                    viewModel in
                    
                    if viewModel == .profile {
                        NavigationLink {
                            ProfileView()
                        } label: {
                            SideMenuOptionRowView(viewModel: viewModel)
                        }
                    } else if viewModel == .logout {
                        Button {
                            print("su ly dang xuat")
                        } label: {
                            SideMenuOptionRowView(viewModel: viewModel)
                        }
                    } else {
                        SideMenuOptionRowView(viewModel: viewModel)
                    }
                    
                    
                }
            }
            
            Spacer()
        }
            .background(Color.white)
        
    }
}

#Preview {
    SideMenuView()
}

