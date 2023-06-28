//
//  calculateStackView.swift
//  Tipsy
//
//  Created by Александр Андреев on 28.06.2023.
//

import Foundation

import UIKit

class calculateStackView: UIStackView {
    
    private lazy var selectTipLabel = {
        
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCalculateStackView() {
        axis = .vertical
        spacing = 26
        alignment = .center
        distribution = .fill
    }
}
