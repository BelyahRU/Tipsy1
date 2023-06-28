//
//  secondView.swift
//  Tipsy
//
//  Created by Александр Андреев on 23.06.2023.
//

import Foundation

import UIKit
class secondView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSecondView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupSecondView() {
        backgroundColor = UIColor (named: Resources.Colors.backkgroundColor)
    }
    
}
