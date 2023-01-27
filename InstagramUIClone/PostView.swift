//
//  PostView.swift
//  InstagramUIClone
//
//  Created by Djallil on 2023-01-26.
//

import SwiftUI

struct PostView: View {
    let post: Post
    var body: some View {
        VStack(spacing: 8) {
            PostHeaderView(user: post.user, location: post.location)
            AsyncImage(url: post.imageURL) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 250)
                    .clipped()
            } placeholder: {
                ZStack {
                    Color.secondary
                    ProgressView()
                }
                .frame(height: 250)
            }
            PostInteractionBar()
            HStack {
                Text("69 likes")
                    .bold()
                    .font(.callout)
                Spacer()
            }
            .padding(.horizontal)
            CommentHorizontalView(user: post.user)
            HStack {
                Text(post.date, style: .date)
                    .font(.caption)
                    .foregroundColor(.secondary)
                Spacer()
            }
            .padding(8)
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(post: Post.posts.randomElement()!)
    }
}

struct PostHeaderView: View {
    let user: User
    let location: String
    var body: some View {
        HStack {
            AsyncImage(url: user.profilImageURL) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 34, height: 34)
                    .clipShape(Circle())
            } placeholder: {
                ZStack {
                    Color.secondary
                    ProgressView()
                }
                .frame(width: 34, height: 34)
                .clipShape(Circle())
            }
            VStack(alignment: .leading) {
                Text(user.userName)
                    .font(.callout)
                    .bold()
                Text(location)
                    .font(.callout)
            }
            Spacer()
            Button(action:{}) {
                Image(systemName: "ellipsis")
                    .bold()
                    .imageScale(.large)
            }
            .buttonStyle(.plain)
            
        }
        .padding()
    }
}

struct PostInteractionBar: View {
    var body: some View {
        HStack {
            Button(action:{}) {
                Image(systemName: "heart")
                    .bold()
                    .imageScale(.large)
            }
            .buttonStyle(.plain)
            Button(action:{}) {
                Image(systemName: "bubble.right")
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
            Spacer()
            Button(action:{}) {
                Image(systemName: "bookmark")
                    .bold()
                    .imageScale(.large)
            }
            .buttonStyle(.plain)
        }
        .padding(.top, 8)
        .padding(.horizontal)
    }
}

struct CommentHorizontalView: View {
    @State var comment: String = ""
    let user: User
    var body: some View {
        HStack {
            AsyncImage(url: user.profilImageURL) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 34, height: 34)
                    .clipShape(Circle())
            } placeholder: {
                ZStack {
                    Color.secondary
                    ProgressView()
                }
                .frame(width: 34, height: 34)
                .clipShape(Circle())
            }
            TextField("Comment Textfield", text: $comment, prompt: Text("Add your comment...").font(.callout))
            Spacer()
        }
        .padding(.vertical, 8)
        .padding(.horizontal)
    }
}
