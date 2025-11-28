//
//  UserStatView.swift
//  TikTok-Clone-Project
//
//  Created by Hammad Ali on 28/11/2025.
//

import SwiftUI

struct UserStatView: View {
    let value: Int
    let title: String
    var body: some View {
        VStack() {
             Text("\(value)")
                 .font(.subheadline)
                 .fontWeight(.semibold)
             Text(title)
                 .font(.caption)
                 .foregroundColor(.gray)
             
         }
         .frame(width: 80, alignment: .center)
     }
    }



#Preview {
    UserStatView(value: 5, title: "Followings")
}
