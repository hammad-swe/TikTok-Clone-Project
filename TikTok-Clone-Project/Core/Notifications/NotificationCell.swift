//
//  NotificationCell.swift
//  TikTok-Clone-Project
//
//  Created by Hammad Ali on 28/11/2025.
//

import SwiftUI

struct NotificationCell: View {
    var body: some View {
        HStack{
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(Color(.systemGray5))
            HStack{
                Text("hammad_07")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Text("like your posts, so cute and lovely")
                    .font(.footnote)
                Text("3d")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            HStack{
                Rectangle()
                    .frame(width: 48, height: 48)
                    .clipShape(RoundedRectangle(cornerRadius: 06))
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    NotificationCell()
}
