//
//  Step.swift
//  AnimalCardChess
//
//  Created by 小天才 on 2020/6/13.
//  Copyright © 2020年 小天才. All rights reserved.
//

import Foundation

//走棋方向：翻棋、上、下、左、右。
enum StepDirection{
    case turn
    case up
    case down
    case left
    case right
}

struct Step {
    var count: Int //当前的步数
//    var compositionId: String //棋局的id
    var playerId: String//当前走棋的玩家id
    var chess: Chess //当前走的棋子
    var direction: StepDirection //走棋的情况
//    var position: Int //当前走棋的位置
    var beEat: Chess? //被吃的棋子（可能存在）
    
    
    init(count: Int, playerId: String, chess: Chess, direction: StepDirection, beEat: Chess? = nil) {
        self.count = count
        self.playerId = playerId
        self.chess = chess
        self.direction = direction
        self.beEat = beEat
    }
    
}
