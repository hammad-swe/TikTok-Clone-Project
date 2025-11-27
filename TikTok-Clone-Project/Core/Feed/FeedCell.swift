//
//  FeedCell.swift
//  TikTok-Clone-Project
//
//  Created by Hammad Ali on 27/11/2025.
//

import SwiftUI

struct FeedCell: View {
    let post : Int
    var body: some View {
        
        ZStack(){
            Rectangle()
                .fill(.blue)
                .containerRelativeFrame([.horizontal, .vertical])
                .overlay{
                    Text("Post\(post)")
                        .foregroundColor(.white)
                }
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
                                Text("27")
                                    .font(.caption)
                                    .foregroundColor(.white)
                            }
                        }

                    }
                    
                }
                .padding(.bottom, 80)
            }
            .padding()
        }
    }
}

#Preview {
    FeedCell(post: 2)
}
