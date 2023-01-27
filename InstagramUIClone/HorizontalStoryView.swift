//
//  HorizontalStoryView.swift
//  InstagramUIClone
//
//  Created by Djallil on 2023-01-26.
//

import SwiftUI

struct HorizontalStoryView: View {
    let users: [User]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 15) {
                PersonalStoryView(user: users.randomElement()!)
                ForEach(users) { user in
                    SingleHorizontalStoryView(user: user)
                }
            }
            .padding(.horizontal)
            .frame(height: 120)
        }
    }
}

struct HorizontalStoryView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalStoryView(users: User.sampleData)
    }
}

struct PersonalStoryView: View {
    let user: User
    var body: some View {
        VStack {
            AsyncImage(url: user.profilImageURL) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 68, height: 68)
                    .clipShape(Circle())
            } placeholder: {
                ZStack {
                    Color.secondary
                    ProgressView()
                }
                .frame(width: 68, height: 68)
                .clipShape(Circle())
            }
            .overlay {
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        ZStack {
                            Circle()
                                .fill(Color.white)
                                .frame(width: 28)
                            Circle()
                                .fill(Color.blue)
                                .frame(width: 25)
                                .overlay {
                                    Image(systemName: "plus")
                                        .imageScale(.small)
                                        .foregroundColor(.white)
                                }
                        }
                    }
                }
            }
            Text("Your story")
        }
    }
}

struct SingleHorizontalStoryView: View {
    let user: User
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .stroke(lineWidth: 3)
                    .fill(.linearGradient(colors: [.pink, .purple, .pink, .purple], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: 68, height: 68)
                AsyncImage(url: user.profilImageURL) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                } placeholder: {
                    ZStack {
                        Color.secondary
                        ProgressView()
                    }
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                }
            }
            Text(user.userName)
                .font(.callout)
        }
    }
}
