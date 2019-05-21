//
//  Card.swift
//  CardGame
//
//  Created by joon-ho kil on 5/21/19.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

class Card {
    // Swift 는 클래스보다 구조체, enum 을 선호한다는 이야기를 들어서 nested enum 으로 구현해봤습니다.
    
    // nested Suit enumeration
    enum Suit: Character {
        case spades = "♠️", hearts = "♥️", diamonds = "♦️", clubs = "♣️"
    }
    
    // nested Rank enumeration
    enum Rank: Int {
        case ace = 1, two, three, four, five, six, seven, eight, nine, ten, jack, queen, king
    }
    
    // Card properties and methods
    private let rank: Rank, suit: Suit
    
    init(rank: Rank, suit: Suit) {
        self.rank = rank
        self.suit = suit
    }
    
    var description: String {
        return "\(suit.rawValue)\(rank.rawValue)"
    }
}
