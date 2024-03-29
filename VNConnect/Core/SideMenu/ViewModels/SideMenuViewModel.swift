//
//  SideMenuViewModel.swift
//  VNConnect
//
//  Created by Apple on 3/20/24.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable {
    case profile
    case list
    case bookmark
    case logout
    
    var sidebar: String {
        switch self {
        case .profile: return "Profile"
        case .list: return "List"
        case .bookmark: return "Bookmark"
        case .logout: return "Logout"
        }
    }
    var image: String {
        switch self {
        case .profile: return "person"
        case .list: return "list.bullet"
        case .bookmark: return "bookmark"
        case .logout: return "arrow.left.square"
        }
    }
}
