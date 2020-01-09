//
//  MadLibs.swift
//  Word Play
//
//  Created by Elise Farley on 10/22/19.
//  Copyright © 2019 Elise Farley. All rights reserved.
//

class MadLibs
{
    var noun0 = ""
    var noun1 = ""
    var noun2 = ""
    var noun3 = ""
    
    var adjective0 = ""
    var adjective1 = ""
    var adjective2 = ""
    var adjective3 = ""
    
    func writeStory() -> String {
        return " \t Yesterday I saw a \(adjective0) \(noun2) lying on the ground. I bent down to pick it up but found a \(noun0) instead. Needless to say I was \(adjective2). Immediatley I took my \(adjective3) \(noun1) and went home. Then I ate a \(noun3) and called it a day. Overall, a pretty \(adjective1) day."
    }
}
