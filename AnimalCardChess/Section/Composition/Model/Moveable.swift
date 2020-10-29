//
//  Moveable.swift
//  AnimalCardChess
//
//  Created by 小天才 on 2020/6/12.
//  Copyright © 2020年 小天才. All rights reserved.
//

import Foundation

postfix operator >+ //右移
postfix operator >- //左移
postfix operator ^+ //下移
postfix operator ^- //上移

protocol Moveable {
    static postfix func >+ (left: Self) -> Self
    static postfix func >- (left: Self) -> Self
    static postfix func ^+ (left: Self) -> Self
    static postfix func ^- (left: Self) -> Self
}

