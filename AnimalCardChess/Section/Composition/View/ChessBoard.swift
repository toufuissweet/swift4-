//
//  ChessBoard.swift
//  AnimalCardChess
//
//  Created by 小天才 on 2020/6/9.
//  Copyright © 2020年 小天才. All rights reserved.
//

import UIKit

class ChessBoard: UIImageView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.createView()
    }
    
    convenience init(){
        self.init(frame: CGRect.zero)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //设置棋盘分割线颜色
    var lineColor: UIColor = UIColor.white{
        didSet{
            self.lineView?.lineColor = lineColor
            self.lineView?.layer.borderColor = lineColor.cgColor
        }
    }
    
    private var lineView: ChessBoardLine!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.lineView?.frame = self.bounds
    }
    
    func createView(){
        
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 0)
        self.layer.shadowRadius = 2
        self.layer.shadowOpacity = 2
        
        self.isUserInteractionEnabled = true
        
        self.lineView = ChessBoardLine()
        self.lineView.backgroundColor = UIColor.clear
        self.lineView?.layer.borderWidth = 1.0
        self.addSubview(self.lineView)
        
        self.lineColor = UIColor.white.withAlphaComponent(0.3)
    }
}
