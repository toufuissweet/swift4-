//
//  Composition.swift
//  AnimalCardChess
//
//  Created by 小天才 on 2020/6/13.
//  Copyright © 2020年 小天才. All rights reserved.
//

import Foundation

struct Composition {
    var id: String
    var startChesses: [Chess] //开局棋子布局数据。
    //开局...初始化方法
    init(id: String, startChesses: [Chess]){
        self.id = id
        self.startChesses = startChesses
    }
    
}
