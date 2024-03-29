//
//  ProfileView.swift
//  VNConnect
//
//  Created by Apple on 3/20/24.
//

import SwiftUI

struct ProfileView: View {
    @Namespace var animation
    @Environment(\.presentationMode) var mode
    @State private var  selectedFilter: TweetFilterViewModel = .tweets
    
    var body: some View {
        VStack(alignment: .leading) {
            headerView
            
            actionButton
            
            userInfo
            
            tweetFilterBar
            
            tweetsView
            
            Spacer()
        }
    }
}

#Preview {
    ProfileView()
}

extension ProfileView {
    // nền xanh header và nút quay lại trang chủ
    var headerView: some View {
        ZStack(alignment: .bottomLeading) {
            Color(.systemBlue)
                .ignoresSafeArea()
            
            VStack {
                // btn quay lai
                Button {
                    mode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 20, height: 16)
                        .foregroundColor(.white)
                        .offset(x: 8)
                }
                
                Circle()
                    .frame(width: 72, height: 72)
                    .offset(x: 16, y: 28)
            }
        }
        .frame(height: 96)
    }
    
    // thông báo và sửa profile
    var actionButton: some View {
        HStack {
            Spacer()
            
            Image(systemName: "bell.badge")
                .font(.title3)
                .padding(6)
                .overlay(Circle().stroke(Color.gray, lineWidth: 0.75))
            
            Button {
                
            } label: {
                Text("Edit profile")
                    .font(.subheadline).bold()
                    .frame(width: 120, height: 32)
                    .foregroundColor(.black)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 0.75))
            }
            
        }
        .padding(.trailing)
    }
    
    // thông tin và các liên kết của người dùng
    var userInfo: some View {
        VStack(alignment: .leading, spacing: 4) {
            //Thông tin về tên và mô tả
            HStack {
                Text("Nguyen Thanh Chung")
                    .font(.title2).bold()
                
                Image(systemName: "checkmark.circle.fill")
                    .foregroundColor(Color(.systemBlue))
            }
            
            Text("@tconthemic")
                .font(.subheadline)
                .foregroundStyle(.gray)
            
            Text("20 tuoi thich gai 21")
                .font(.subheadline)
                .padding(.vertical)
            
            // vị trí và liên kết
            HStack(spacing: 24) {
                HStack {
                    Image(systemName: "mappin.and.ellipse")
                    
                    Text("Ha Dong, Ha Noi")
                }
                
                HStack {
                    Image(systemName: "link")
                    
                    Text("http://github.com")
                }
            }
            .font(.caption)
            .foregroundColor(.gray)
            
            // following anh follower
            UserStatsView()
                .padding(.vertical)
        }
        .padding(.horizontal)
    }
    
    // lua chon cac tweet: tweets, da tra loi, da like
    var tweetFilterBar: some View {
        HStack {
            ForEach(TweetFilterViewModel.allCases, id: \.rawValue) {
                item in
                
                VStack {
                    Text(item.title)
                        .font(.subheadline)
                        .fontWeight(selectedFilter == item ? .semibold : .regular)
                        .foregroundStyle(selectedFilter == item ? .black : .gray)
                    
                    if selectedFilter == item {
                        Capsule()
                            .frame(height: 3)
                            .foregroundColor(Color(.systemBlue))
                            .matchedGeometryEffect(id: "filter", in: animation)
                    } else {
                        Capsule()
                            .frame(height: 3)
                            .foregroundColor(Color(.clear))
                    }
                }
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        self.selectedFilter = item
                    }
                }
            }
        }
        .overlay(Divider().offset(x: 0, y: 16))
    }
    
    // danh sach cac tweets theo filter
    var tweetsView: some View {
        ScrollView {
            LazyVStack {
                ForEach(0 ... 20, id: \.self) {
                    _ in
                    TweetRowView()
                        .padding()
                }
            }
        }
    }
}
