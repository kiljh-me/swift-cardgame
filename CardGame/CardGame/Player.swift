//
//  Player.swift
//  CardGame
//
//  Created by joon-ho kil on 5/27/19.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct Player: Human {
    let name: String
    private(set) var cards = [Card]()
}
