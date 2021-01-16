//
//  ContentView.swift
//  EmojiWidget
//
//  Created by Britone Mwasaru on 16/01/2021.
//

import SwiftUI

struct EmojiItemView: View {
    let emoji: String
    let emojiName: String
    
    var body: some View {
        Text("\(emoji) \(emojiName)")
            .font(.largeTitle)
            .padding([.top, .bottom])
    }
}

struct EmojiDetailsView: View {
    var emojiDetails: EmojiDetails
    
    var body: some View {
        ZStack {
            // Background color
            Color(UIColor.systemIndigo).edgesIgnoringSafeArea(.all)
            
            // Emoji data
            VStack {
                VStack(alignment:.leading) {
                    HStack {
                        Text("\(emojiDetails.emoji) \(emojiDetails.name)")
                            .font(.largeTitle)
                            .bold()
                    }
                    
                    .padding()
                    
                    Text(emojiDetails.description)
                        .padding([.leading, .trailing, .bottom])
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct EmojiwidgetListView: View {
    
    let emojiData: [EmojiDetails] = EmojiProvider.all()
    @State private var showingDetail: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(emojiData, content: { emojiDetails in
                    Button(action: {
                            showingDetail.toggle()
                        
                    }, label: { EmojiItemView(emoji: emojiDetails.emoji, emojiName: emojiDetails.name)
                           })
                        .sheet(isPresented: $showingDetail) {
                            EmojiDetailsView(emojiDetails: emojiDetails)
                        }
                })
            }
            .foregroundColor(.black)
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Emoji Widget")
          }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiwidgetListView()
    }
}
