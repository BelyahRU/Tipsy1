//
//  buttonsStackView.swift
//  Tipsy
//
//  Created by Александр Андреев on 29.06.2023.
//

import Foundation
import UIKit

class buttonsStackView: UIStackView {
    
    private lazy var zeroPerButton: UIButton = {
        
        let button = persentButton()
        button.setTitle("0%", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        button.setTitleColor(UIColor(named: Resources.Colors.greenColor), for: .normal)
        
        button.addTarget(self, action: #selector(zeroPressed), for: .touchUpInside)
        return button
    }()
    
    private lazy var tenPerButton: UIButton = {
        
        let button = UIButton()
        button.setTitle("10%", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        button.setTitleColor(UIColor(named: Resources.Colors.greenColor), for: .normal)
        button.addTarget(self, action: #selector(tenPressed), for: .touchUpInside)
        return button
    }()
    private lazy var twentyPerButton: UIButton = {
        
        let button = UIButton()
        button.setTitle("20%", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        button.setTitleColor(UIColor(named: Resources.Colors.greenColor), for: .normal)
        button.addTarget(self, action: #selector(twentyPressed), for: .touchUpInside)
        return button
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtonsStackView()
        setupSubview()
        setupConstraints()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupButtonsStackView() {
        axis = . horizontal
        alignment = .fill
        distribution = .fillProportionally
        spacing = 0
        contentMode = .scaleToFill
    }
    
    func setupSubview() {
        addArrangedSubview(zeroPerButton)
        addArrangedSubview(tenPerButton)
        addArrangedSubview(twentyPerButton)
        
        //Делаем центральную кнопку больше, а 2 другие одинаковые
        let widthConstraint = zeroPerButton.widthAnchor.constraint(equalTo: twentyPerButton.widthAnchor)
        widthConstraint.isActive = true
        let middleButtonWidthMultiplier: CGFloat = 1.6
        
        let middleButtonWidthConstraint = tenPerButton.widthAnchor.constraint(equalTo: zeroPerButton.widthAnchor, multiplier: middleButtonWidthMultiplier)
        middleButtonWidthConstraint.isActive = true
    }
    
    func buttonPressed(_ button: UIButton) {
//        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
//        button.backgroundColor = UIColor(named: Resources.Colors.greenColor)
//        button.tintColor = UIColor(red: 0/255, green: 176/255, blue: 107/255, alpha: 1)
//        button.setTitleColor(UIColor(red: 0/255, green: 176/255, blue: 107/255, alpha: 1), for: .normal)
//        button.backgroundColor = UIColor(named: Resources.Colors.greenColor)
//        button.setTitleColor(.white, for: .normal)
//
//        button.isSelected = true
        button.tintColor = UIColor(red: 0/255, green: 176/255, blue: 107/255, alpha: 1)
        button.setTitleColor(.green, for: .normal)
        
        //Создает нужный нам эффект
        button.isSelected = true
        print(1)
    }
    
    @objc func tenPressed() {
       // buttonPressed(tenPerButton)
        tenPerButton.tintColor = UIColor(red: 0/255, green: 176/255, blue: 107/255, alpha: 1)
        tenPerButton.setTitleColor(UIColor(named: Resources.Colors.greenColor), for: .normal)
        tenPerButton.isSelected = true
        zeroPerButton.isSelected = false
        twentyPerButton.isSelected = false
        print("fd")
    }
    
    @objc func zeroPressed() {
        buttonPressed(zeroPerButton)
        twentyPerButton.isSelected = true
        tenPerButton.isSelected = true
    }
    @objc func twentyPressed() {
        buttonPressed(twentyPerButton)
        tenPerButton.isSelected = false
        zeroPerButton.isSelected = false
    }
    
    func setupConstraints() {
        
        
        zeroPerButton.snp.makeConstraints { make in
            
            make.height.equalTo(54)
        }
        tenPerButton.snp.makeConstraints { make in
            
            make.height.equalTo(54)
        }
        twentyPerButton.snp.makeConstraints { make in
            
            make.height.equalTo(54)
        }
    }
    
    
}
