//
//  secondView.swift
//  Tipsy
//
//  Created by Александр Андреев on 23.06.2023.
//

import Foundation

import UIKit
class ssecondView: UIView {
    
    var calculateSV = calculateStackView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews()
        setupSecondView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupSecondView() {
        backgroundColor = UIColor(named: Resources.Colors.backgroundColor)
    }
    
    private func setupConstraints() {
        calculateSV.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.top.equalToSuperview().offset(20)
            make.bottom.equalTo(-398)
        }
    }
    
    private func addSubviews() {
        addSubview(calculateSV)
    }
}
