//
//  MainView.swift
//  swift-practice
//
//  Created by masato on 2020/11/27.
//

import UIKit

class MainView: UIView {
    var mainLabel = UILabel()

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override init(frame: CGRect) {
        
        // `mainLabel` を作ります
        self.mainLabel = UILabel()
        self.mainLabel.text = "Hello World!"
        super.init(frame: frame)
        self.backgroundColor = .white
        self.addSubview(mainLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        
        super.layoutSubviews()
        
        let labelSize = self.mainLabel.sizeThatFits(self.bounds.size)
        
        let x = (self.bounds.width - labelSize.width) / 2
        let y = (self.bounds.height - labelSize.height) / 2
        let labelOrigin = CGPoint(x: x, y: y)
        
        self.mainLabel.frame = CGRect(origin: labelOrigin, size: labelSize)
    }
    
}
