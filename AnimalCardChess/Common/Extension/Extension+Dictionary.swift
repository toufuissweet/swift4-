//
//  Extension+Dictionary.swift
//  AnimalCardChess
//
//  Created by 小天才 on 2020/7/29.
//  Copyright © 2020年 小天才. All rights reserved.
//

import Foundation

extension Dictionary{
    func data()->Data?{
        let data = try? JSONSerialization.data(withJSONObject: self, options: JSONSerialization.WritingOptions.prettyPrinted)
        return data
    }
}
