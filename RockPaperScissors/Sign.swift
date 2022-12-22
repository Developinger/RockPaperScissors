//
//  Sign.swift
//  RockPaperScissors
//
//  Created by Petit Bradley on 12/20/22.
//

import Foundation

func randomSign() -> Sign {
    let sign = Int.random(in: 0...2)
    if sign == 0 { return .rock }
    else if sign == 1 { return .paper }
    else { return .scissors }
}



enum Sign {
    case rock, paper, scissors
    
    var emoji: String {
        switch self {
        case .rock: return "👊"
        case .paper: return "✋"
        case .scissors: return "✌️"
        }
    }
    
    
    func checkWin(otherSign: Sign) -> GameState {
        if self == .rock && otherSign == .paper{
            return .lose
        }
        if self == .rock && otherSign == .scissors{
            return .win
        }
        if self == .paper && otherSign == .rock{
            return .win
        }
        if self == .paper && otherSign == .scissors{
            return .lose
        }
        if self == .scissors && otherSign == .paper{
            return .win
        }
        if self == .scissors && otherSign == .rock{
            return .lose
        }
        if self == .rock && otherSign == .rock{
            return .draw
        }
        if self == .scissors && otherSign == .scissors{
            return .draw
        }
        if self == .paper && otherSign == .paper{
            return .draw
        }
        
        return .draw
    }
}
    


