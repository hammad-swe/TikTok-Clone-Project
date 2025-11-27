//
//  FeedView.swift
//  TikTok-Clone-Project
//
//  Created by Hammad Ali on 27/11/2025.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView{
            LazyVStack(spacing: 0){
                ForEach(0 ..< 10){ post in
                    FeedCell(post: post)
                }
            
            }
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.paging)
        .ignoresSafeArea()
    }
}

#Preview {
    FeedView()
}
