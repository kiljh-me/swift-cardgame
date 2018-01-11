//
//  main.swift
//  CardGame
//
//  Created by Jack
//  2018/01/05
//  Copyright © 2017 JK. All rights reserved.
//

import Foundation

var runCardGame : Bool = true
let inputView : InputView = InputView()
let outputView : OutputView = OutputView()
var userDeck : CardDeck = CardDeck()
var playerCards : [[Card]] = []
userDeck.shuffle()

while runCardGame {
    
    outputView.printMessage(.gameSpecies)
    let userGame = inputView.readMenu()
    guard userGame != .exitGame else { break }
    if userGame == .invalidMenu  {
        outputView.printMessage(.invalidMenu)
        continue
    }
    outputView.printMessage(.playersInput)
    let userPlayers = inputView.readPlayers()
    if userPlayers == .invalidPlayer {
        outputView.printMessage(.exceedMessage)
        continue
    }
    
    guard let gameSpecies = userGame, let players = userPlayers else { break }
    let userGameInfo = GameInfo(gameSpecies.rawValue, players.rawValue)

    if userDeck.isPossibleGame(userGameInfo) == false {
        outputView.printMessage(.lackOfCards)
        outputView.printMessage(.exitCardGame)
        break
    }
    
    outputView.printPlayerCards(userDeck.generateStacks(userGameInfo))
    
}
