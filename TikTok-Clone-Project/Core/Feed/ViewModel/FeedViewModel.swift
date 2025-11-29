//
//  FeedViewModel.swift
//  TikTok-Clone-Project
//
//  Created by Hammad Ali on 28/11/2025.
//
import Combine
import Foundation
class FeedViewModel: ObservableObject {
    @Published var posts = [Post]()
    
    let videoURLs = [
//        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
//        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
//        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4",
//        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4",
//        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4",
//        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4",
//        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/VolkswagenGTIReview.mp4"
    ]
    init(){
        fetchPosts()
    }
    func fetchPosts() {
        self.posts = [
            .init(id: NSUUID().uuidString, videoURL: videoURLs[0]),
            .init(id: NSUUID().uuidString, videoURL: videoURLs[1]),
            .init(id: NSUUID().uuidString, videoURL: videoURLs[2]),
//            .init(id: NSUUID().uuidString, videoURL: videoURLs[3]),
//            .init(id: NSUUID().uuidString, videoURL: videoURLs[4]),
//            .init(id: NSUUID().uuidString, videoURL: videoURLs[5]),
//            .init(id: NSUUID().uuidString, videoURL: videoURLs[6]),
//            .init(id: NSUUID().uuidString, videoURL: videoURLs[7]),
//            .init(id: NSUUID().uuidString, videoURL: videoURLs[8]),
//            .init(id: NSUUID().uuidString, videoURL: videoURLs[9]),
        ]
    }
}
