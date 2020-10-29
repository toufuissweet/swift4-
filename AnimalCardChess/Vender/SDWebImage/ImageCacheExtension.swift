//
//  ImageCacheExtension.swift
//  AnimalCardChess
//
//  Created by 小天才 on 2020/8/6.
//  Copyright © 2020年 小天才. All rights reserved.
//

import UIKit
import SDWebImage

extension UIImageView{
    func mc_setImage(with url: URL!, placeholderImage placeholder: UIImage! = nil){
        self.sd_setImage(with: url, placeholderImage: placeholder)
    }
}
