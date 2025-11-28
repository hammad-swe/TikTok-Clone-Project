//
//  ProfileHeaderView.swift
//  TikTok-Clone-Project
//
//  Created by Hammad Ali on 28/11/2025.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(spacing: 16){
            VStack(spacing: 8){
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundColor(Color(.systemGray5))
                Text("@hammad_ali")
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }
        }
        
        HStack(spacing: 16){
            UserStatView(value: 5, title: "Followings")
            UserStatView(value: 1, title: "Followers")
            UserStatView(value: 7, title: "Likes")
            
        }
        Button {
            
        } label: {
           Text("Edith Profile")
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 360, height: 32)
                .foregroundColor(.black)
                .background(Color(.systemGray6))
                .clipShape(RoundedRectangle(cornerRadius: 6))
        }

    }
}
    
#Preview {
    ProfileHeaderView()
}
    

