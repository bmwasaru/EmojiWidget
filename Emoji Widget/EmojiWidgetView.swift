//
//  EmojiWidgetView.swift
//  Emoji WidgetExtension
//
//  Created by Britone Mwasaru on 16/01/2021.
//

import SwiftUI

struct EmojiWidgetView: View {
    let emojiDetails: EmojiDetails
    
    var body: some View {
        ZStack {
            Color(UIColor.systemIndigo)
            VStack {
                Text(emojiDetails.emoji)
                    .font(.system(size: 56))
                Text(emojiDetails.name)
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .padding(.top, 5)
                    .foregroundColor(.white)
            }
        }
    }
}
