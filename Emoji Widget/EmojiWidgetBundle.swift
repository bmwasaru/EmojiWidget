//
//  EmojiWidgetBundle.swift
//  Emoji WidgetExtension
//
//  Created by Britone Mwasaru on 16/01/2021.
//

import SwiftUI
import WidgetKit

@main
struct EmojiWidgetBundle: WidgetBundle {

  @WidgetBundleBuilder
  var body: some Widget {
    RandomEmojiWidget()
    CustomEmojiWidget()
  }
}
