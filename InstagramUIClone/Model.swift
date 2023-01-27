//
//  User.swift
//  InstagramUI
//
//  Created by Djallil on 2023-01-26.
//

import Foundation

struct User: Identifiable {
    let id = UUID()
    let userName: String
    let profilImageURL: URL?
    
    static let sampleData: [User] = [
        User(userName: "John Doe", profilImageURL: URL(string:"https://randomuser.me/api/portraits/men/75.jpg")),
        User(userName: "Jane Doe", profilImageURL: URL(string:"https://randomuser.me/api/portraits/women/76.jpg")),
        User(userName: "John Doe", profilImageURL: URL(string:"https://randomuser.me/api/portraits/men/77.jpg")),
        User(userName: "Jane Doe", profilImageURL: URL(string:"https://randomuser.me/api/portraits/women/78.jpg")),
        User(userName: "John Doe", profilImageURL: URL(string:"https://randomuser.me/api/portraits/men/79.jpg")),
        User(userName: "Jane Doe", profilImageURL: URL(string:"https://randomuser.me/api/portraits/women/80.jpg")),
        User(userName: "John Doe", profilImageURL: URL(string:"https://randomuser.me/api/portraits/men/81.jpg")),
        User(userName: "Jane Doe", profilImageURL: URL(string:"https://randomuser.me/api/portraits/women/82.jpg"))
    ]
}

struct Post: Identifiable {
    let id = UUID()
    let user: User
    let imageURL: URL?
    let description: String
    let location: String
    let date = Date()
    
    static let posts: [Post] = [
        Post(user: .sampleData.randomElement()!, imageURL: URL(string: "https://picsum.photos/300/300"), description: "This is a cool description please subscribe to my channel, like and comment if you read this :D", location: "in Youtube"),
        Post(user: .sampleData.randomElement()!, imageURL: URL(string: "https://picsum.photos/300/300"), description: "This is a cool description please subscribe to my channel, like and comment if you read this :D", location: "in Youtube"),
        Post(user: .sampleData.randomElement()!, imageURL: URL(string: "https://picsum.photos/300/300"), description: "This is a cool description please subscribe to my channel, like and comment if you read this :D", location: "in Youtube"),
        Post(user: .sampleData.randomElement()!, imageURL: URL(string: "https://picsum.photos/300/300"), description: "This is a cool description please subscribe to my channel, like and comment if you read this :D", location: "in Youtube"),
        Post(user: .sampleData.randomElement()!, imageURL: URL(string: "https://picsum.photos/300/300"), description: "This is a cool description please subscribe to my channel, like and comment if you read this :D", location: "in Youtube"),
        Post(user: .sampleData.randomElement()!, imageURL: URL(string: "https://picsum.photos/300/300"), description: "This is a cool description please subscribe to my channel, like and comment if you read this :D", location: "in Youtube"),
        Post(user: .sampleData.randomElement()!, imageURL: URL(string: "https://picsum.photos/300/300"), description: "This is a cool description please subscribe to my channel, like and comment if you read this :D", location: "in Youtube"),
    ]
}
