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
        
        let button = CustomButton(title: "0%")
        button.addTarget(self, action: #selector(zeroPressed), for: .touchUpInside)
        return button
    }()
    
    private lazy var tenPerButton: UIButton = {
        
        let button = CustomButton(title: "10%")
        button.addTarget(self, action: #selector(tenPressed), for: .touchUpInside)
        return button
    }()
    private lazy var twentyPerButton: UIButton = {
        
        let button = CustomButton(title: "20%")
        button.addTarget(self, action: #selector(twentyPressed), for: .touchUpInside)
        return button
    }()
    private var pressedButtonn: String = "0"
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtonsStackView()
        setupSubview()
        setupConstraints()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupButtonsStackView() {
        axis = . horizontal
        alignment = .fill
        distribution = .fillProportionally
        spacing = 0
        contentMode = .scaleToFill
    }
    
    private func setupSubview() {
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
    
    private func buttonPressed(_ button: UIButton) {
        button.tintColor = UIColor(red: 0/255, green: 176/255, blue: 107/255, alpha: 1)
        button.setTitleColor(UIColor(named: Resources.Colors.greenColor), for: .normal)
        
        //Создает нужный нам эффект
        button.isSelected = true
    }
    
    @objc func tenPressed() {
        pressedButtonn = "10"
        buttonPressed(tenPerButton)
        zeroPerButton.isSelected = false
        twentyPerButton.isSelected = false
        print(pressedButtonn)
    }
    
    @objc func zeroPressed() {
        pressedButtonn = "0"
        buttonPressed(zeroPerButton)
        twentyPerButton.isSelected = false
        tenPerButton.isSelected = false
        print(pressedButtonn)
    }
    @objc func twentyPressed() {
        pressedButtonn = "20"
        buttonPressed(twentyPerButton)
        tenPerButton.isSelected = false
        zeroPerButton.isSelected = false
        print(pressedButtonn)
    }
    
    
    
    private func setupConstraints() {
        
        
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
    
    func getButton() -> String {
        return pressedButtonn
    }
    
    
}
