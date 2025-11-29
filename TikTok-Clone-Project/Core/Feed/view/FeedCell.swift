//
//  FeedCell.swift
//  TikTok-Clone-Project
//
//  Created by Hammad Ali on 27/11/2025.
//

import SwiftUI
import AVKit
struct FeedCell: View {
    let post : Post
    var player : AVPlayer
    
    init(post: Post) {
        self.post = post
        self.player = AVPlayer(url: URL(string: post.videoURL)!)
    }
    
    var body: some View {
        
        ZStack(){
            CustomVideoPlayer(player: player)
                .containerRelativeFrame([.horizontal, .vertical])
            VStack{
                Spacer()
                HStack(alignment: .bottom){
                    VStack(alignment: .leading){
                        Text("Hammad Ali")
                            .fontWeight(.semibold)
                        Text("Wellcome to My Tiktok")
                    }
                    .font(.subheadline)
                    .foregroundColor(.white)
                    
                    Spacer()
                    
                    VStack(spacing: 28){
                        
                        Circle()
                            .frame(width: 48, height: 48)
                            .foregroundColor(.gray)
                        
                        Button {
                            
                        } label: {
                            VStack{
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .frame(width: 28, height: 28)
                                    .foregroundColor(.white)
                                Text("27")
                                    .font(.caption)
                                    .foregroundColor(.white)
                                    .bold()
                            }
                        }
                        Button {
                            
                        } label: {
                            VStack{
                                Image(systemName: "ellipses.bubble.fill")
                                    .resizable()
                                    .frame(width: 28, height: 28)
                                    .foregroundColor(.white)
                                Text("27")
                                    .font(.caption)
                                    .foregroundColor(.white)
                                    .bold()
                            }
                        }
                        
                        Button {
                            
                        } label: {
                            VStack{
                                Image(systemName: "bookmark.fill")
                                    .resizable()
                                    .frame(width: 22, height: 28)
                                    .foregroundColor(.white)
                            }
                        }
                        
                        Button {
                            
                        } label: {
                            VStack{
                                Image(systemName: "arrowshape.turn.up.right.fill")
                                    .resizable()
                                    .frame(width: 28, height: 28)
                                    .foregroundColor(.white)
                            }
                        }

                    }
                    
                }
                .padding(.bottom, 80)
            }
            .padding()
        }
        .onTapGesture {
            switch player.timeControlStatus {
            case .paused:
                player.play()
            case .waitingToPlayAtSpecifiedRate:
                break
            case .playing:
                player.pause()
            default:
                break
            }
        }
    }
}

#Preview {
    FeedCell(post: Post(id: NSUUID().uuidString, videoURL: ""))
}
