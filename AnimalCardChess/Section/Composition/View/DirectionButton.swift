//
//  DirectionButton.swift
//  AnimalCardChess
//
//  Created by 小天才 on 2020/7/15.
//  Copyright © 2020年 小天才. All rights reserved.
//

import UIKit

class DirectionButton: UIButton {
    
    var direction: StepDirection!{
        didSet{
            switch direction{
            case .right?:
                self.setTitle("右", for: .normal)
                break
            case .left?:
                self.setTitle("左", for: .normal)
                break
            case .up?:
                self.setTitle("上", for: .normal)
                break
            case .down?:
                self.setTitle("下", for: .normal)
                break
            default:
                break
            }
            
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.createView()
    }
    
    convenience init() {
        self.init(frame: CGRect.zero)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createView(){
        self.backgroundColor = UIColor.black.withAlphaComponent(0.35)
    }
    
}


