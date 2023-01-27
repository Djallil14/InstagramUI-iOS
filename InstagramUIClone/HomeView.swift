//
//  ContentView.swift
//  InstagramUIClone
//
//  Created by Djallil on 2023-01-26.
//

import SwiftUI

struct HomeView: View {
    @State var posts = Post.posts
    var body: some View {
        VStack {
            HorizontalStoryView(users: User.sampleData)
            List(posts) { post in
                PostView(post: post)
                    .listRowSeparator(.hidden)
                    .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
            }
            .listStyle(.plain)
            .refreshable {
                posts = Post.posts.shuffled()
            }
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Text("Instagram")
                    .font(.billabong(size: 44))
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                HStack {
                    Button(action:{}) {
                        Image(systemName: "plus.app")
                            .bold()
                            .imageScale(.large)
                    }
                    .buttonStyle(.plain)
                    Button(action:{}) {
                        Image(systemName: "heart")
                            .bold()
                            .imageScale(.large)
                    }
                    .buttonStyle(.plain)
                    Button(action:{}) {
                        Image(systemName: "paperplane")
                            .bold()
                            .imageScale(.large)
                    }
                    .buttonStyle(.plain)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            HomeView()
        }
    }
}

extension Font {
    static func billabong(size: CGFloat) -> Font {
        return Font.custom("Billabong", size: size)
    }
}
