//
//  calculateStackView.swift
//  Tipsy
//
//  Created by Александр Андреев on 28.06.2023.
//

import Foundation

import UIKit

class calculateStackView: UIStackView {
    
    private lazy var selectTipLabel: UILabel = {
        let tipLabel = UILabel()
        tipLabel.text = "Select tip"
        tipLabel.font = UIFont(name: Resources.fontName.system, size: 25)
        tipLabel.textColor = UIColor(named: Resources.Colors.grayColor)
        
        return tipLabel
    }()
    
    private lazy var chooseSplitLabel: UILabel = {
        let label = UILabel()
        label.text = "Choose Split"
        label.font = UIFont(name: Resources.fontName.system, size: 25)
        label.textColor = UIColor(named: Resources.Colors.grayColor)
        return label
    }()
    
    private var butttonsPersentSV = buttonsStackView()
    
    private var stepperSV = stepperStackView()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCalculateStackView()
        addSubviews()
        setupConstraints()
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
    
    func addSubviews() {
//        addArrangedSubview(selectTipLabel)
//        addArrangedSubview(butttonsPersentSV)
        addArrangedSubview(selectTipLabel)
        addArrangedSubview(butttonsPersentSV)
        addArrangedSubview(chooseSplitLabel)
        addArrangedSubview(stepperSV)
    }
    
    func setupConstraints() {
        selectTipLabel.snp.makeConstraints { make in
            
            make.width.equalTo(293)
            make.centerX.equalToSuperview()
            make.height.equalTo(30)
        }
        
        butttonsPersentSV.snp.makeConstraints { make in
            
            make.height.equalTo(54)
            make.left.equalToSuperview()
            make.right.equalToSuperview()
        }
        
        chooseSplitLabel.snp.makeConstraints { make in
            make.width.equalTo(293)
            make.height.equalTo(30)
        }
    }
}
