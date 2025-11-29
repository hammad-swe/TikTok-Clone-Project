//
//  FeedView.swift
//  TikTok-Clone-Project
//
//  Created by Hammad Ali on 27/11/2025.
//

import SwiftUI
import AVKit

struct FeedView: View {
    @StateObject var viewModel = FeedViewModel()
    @State private var scrollposition: String?
    @State private var player = AVPlayer()
    var body: some View {
        ScrollView{
            LazyVStack(spacing: 0){
                ForEach(viewModel.posts){ post in
                    FeedCell(post : post)
                        .id(post.id)
                        .onAppear{playInitialVideoIfNecessary()}
                }
            
            }
            .scrollTargetLayout()
        }
        .onAppear{player.play()}
        .scrollPosition(id: $scrollposition)
        .scrollTargetBehavior(.paging)
        .ignoresSafeArea()
        .onChange(of: scrollposition) { oldValue, newValue in
           playVideoonChangeOfScrollPosition(postid: newValue)
        }
    }
    func playInitialVideoIfNecessary() {
        guard scrollposition == nil
                let post = viewModel.posts.first,
              player.currentItem == nil  else { return }
        var item = AVPlayerItem(url: URL(string: post.videoURL)!)
        player.replaceCurrentItem(with: item)
    }
    func playVideoonChangeOfScrollPosition(postid : String?){
        guard let currentPost = viewModel.posts.first(where: { $0.id == postid }) else{return}
        player.replaceCurrentItem(with: nil)
        let playeritem = AVPlayerItem(url: URL(string: currentPost.videoURL)!)
        player.replaceCurrentItem(with: playeritem)
    }
}

#Preview {
    FeedView()
}
