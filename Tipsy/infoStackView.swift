//
//  infoStackView.swift
//  Tipsy
//
//  Created by Александр Андреев on 22.06.2023.
//

import Foundation
import UIKit

class infoStackView: UIStackView {
    
    private var enterBillTotalLabel = UILabel()
    private var egTextField = UITextField()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupStackView()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupStackView() {
        axis = .vertical
        backgroundColor = .white
        spacing = 26
        alignment = .center
    }
    
    func setupEgTextField() {
        egTextField.placeholder = "e.g. 123.56"
        egTextField.font = UIFont(name: Resources.fontName.system, size: 40)
        egTextField.tintColor = UIColor(red: 0/255, green: 176/255, blue: 107/255, alpha: 1)
        egTextField.textAlignment = .center
    
        egTextField.textColor = UIColor(named: Resources.Colors.greenColor)
        egTextField.keyboardType = .decimalPad
        
    }
    
    func setupSubview() {
        addArrangedSubview(egTextField)
        addArrangedSubview(enterBillTotalLabel)
    }
    
    func setupConstraints() {
        
        enterBillTotalLabel.snp.makeConstraints { make in
            make.width.equalTo(293)
            make.height.equalTo(30)
        }
        egTextField.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
        }
        
    }
    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        self.view.endEditing(true)
//    }
    
    
    

    
}
