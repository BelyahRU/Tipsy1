//
//  button.swift
//  Tipsy
//
//  Created by Александр Андреев on 29.06.2023.
//

import Foundation

import UIKit

class persentButton: UIButton {
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupPersentButton(_ button: UIButton, _ type: String) {
        titleLabel?.font = UIFont.systemFont(ofSize: 35)
        setTitleColor(UIColor(named: Resources.Colors.greenColor), for: .normal)
    }
}
