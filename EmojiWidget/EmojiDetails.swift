//
//  EmojiDetails.swift
//  EmojiWidget
//
//  Created by Britone Mwasaru on 16/01/2021.
//

import Foundation

public struct EmojiDetails {
  public let emoji: String
  public let name: String
  public let description: String
}

// MARK: - Identifiable
extension EmojiDetails: Identifiable {
  public var id: String {
    emoji
  }
}
