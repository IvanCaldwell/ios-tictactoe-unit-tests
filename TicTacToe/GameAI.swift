//
//  GameAI.swift
//  TicTacToe
//
//  Created by Andrew R Madsen on 9/11/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

func game(board: GameBoard, isWonBy player: GameBoard.Mark) -> Bool {
    // see if this player has won
    for y in 0 ..< 3 {
        let p1 = board[(x: 0, y: y)]
        let p2 = board[(x: 1, y: y)]
        let p3 = board[(x: 2, y: y)]
        if p1 == player && p2 == player && p3 == player {
            return true
        }
    }
    
    
    for x in 0 ..< 3 {
        let p1 = board[(x: x, y: 0)]
        let p2 = board[(x: x, y: 1)]
        let p3 = board[(x: x, y: 2)]
        if p1 == player && p2 == player && p3 == player {
            return true
        }
    }
    
    if board[(x: 0, y: 0)] == player && board[(x: 1, y: 1)] == player && board[(x: 2, y: 2)] == player {
        return true
    }
    
    if board[(x: 0, y: 2)] == player && board[(x: 1, y: 1)] == player && board[(x: 0, y: 2)] == player {
        return true
    }
    
    return false
}
