//
//  Player.swift
//  AnimalCardChess
//
//  Created by 小天才 on 2020/6/13.
//  Copyright © 2020年 小天才. All rights reserved.
//

import Foundation

struct Player: Codable{
    var id: String //玩家id
    var name: String //玩家名称
    var avatar: String //玩家头像
    var isAI: Bool = false //代表AI玩家
    
    init(id: String, name: String, avatar: String){
        self.id = id
        self.name = name
        self.avatar = avatar
    }
}
