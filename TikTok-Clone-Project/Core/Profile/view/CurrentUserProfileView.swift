//
//  CurrentUserProfileView.swift
//  TikTok-Clone-Project
//
//  Created by Hammad Ali on 28/11/2025.
//

import SwiftUI

struct CurrentUserProfileView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(spacing: 2) {
                    ProfileHeaderView()
                    PostGridView()
                }
                .padding(.top)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    CurrentUserProfileView()
}
