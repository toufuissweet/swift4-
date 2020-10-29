//
//  SetView.swift
//  AnimalCardChess
//
//  Created by 小天才 on 2020/6/9.
//  Copyright © 2020年 小天才. All rights reserved.
//

import UIKit

class SetView: UIView {
    var backButton: UIButton!
    var regretButton: UIButton!
    var surrenderButton: UIButton!
    
    override init(frame: CGRect){
        super.init(frame: frame)
        self.createView()
        self.createSnp()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:)has not been implemented")
    }
    
    func createView() {
        self.backButton = UIButton()
        self.backButton.setTitle("返回",for: .normal)
        self.backButton.setTitleColor(Color.textH, for: .normal)
        self.addSubview(self.backButton)
        
        self.regretButton = UIButton()
        self.regretButton.setTitle("悔棋", for: .normal)
        self.regretButton.setTitleColor(Color.textH, for: .normal)
        self.addSubview(self.regretButton)
        
        self.surrenderButton = UIButton()
        self.surrenderButton.setTitle("认输", for: .normal)
        self.surrenderButton.setTitleColor(Color.textH, for: .normal)
        self.addSubview(self.surrenderButton)
    }
    
    func createSnp() {
        self.backButton.snp.makeConstraints{(make)in
            make.top.bottom.equalToSuperview().inset(5)
            make.left.equalToSuperview().inset(10)
        }
        self.regretButton.snp.makeConstraints{(make)in
            make.top.bottom.equalToSuperview().inset(5)
            make.center.equalToSuperview().inset(10)
        }
        self.surrenderButton.snp.makeConstraints{(make)in
            make.top.bottom.equalToSuperview().inset(5)
            make.right.equalToSuperview().inset(10)
        }
    }
    
}
