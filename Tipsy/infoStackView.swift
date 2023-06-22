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
        setupEgTextField()
        setupEnterBillTotalLabel()
        setupConstraints()
        setupSubview()
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
    
    func setupEnterBillTotalLabel() {
        enterBillTotalLabel.font = UIFont(name: Resources.fontName.system, size: 25)
        enterBillTotalLabel.text = "Enter bill total"
        enterBillTotalLabel.alpha = 1
        enterBillTotalLabel.textColor = UIColor(named: Resources.Colors.grayColor)
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
        addArrangedSubview(enterBillTotalLabel)
        addArrangedSubview(egTextField)
    }
    
    func setupConstraints() {
        
        enterBillTotalLabel.snp.makeConstraints { make in
            make.width.equalTo(293)
            make.height.equalTo(30)
    }
//        egTextField.snp.makeConstraints { make in
//            make.left.right.equalTo(self)
//        }
        
    }
    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        self.view.endEditing(true)
//    }
    
    
    

    
}



//    @objc func dismissKeyboard() {
//           view.endEditing(true)
//       }
//
//    func setupEnterBillTotalLabel() {
//        enterBillTotalLabel.font = UIFont(name: Resources.fontName.system, size: 25)
//        enterBillTotalLabel.text = "Enter bill total"
//        enterBillTotalLabel.alpha = 1
//        enterBillTotalLabel.textColor = UIColor(named: Resources.Colors.grayColor)
//        enterBillTotalLabel.snp.makeConstraints { make in
//            make.width.equalTo(293)
//            make.height.equalTo(30)
//        }
//    }
//
//    func setupEgTextField() {
//        egTextField.placeholder = "e.g. 123.56"
//        egTextField.font = UIFont(name: Resources.fontName.system, size: 40)
//        egTextField.tintColor = UIColor(red: 0/255, green: 176/255, blue: 107/255, alpha: 1)
//        egTextField.textAlignment = .center
//
//        egTextField.textColor = UIColor(named: Resources.Colors.greenColor)
//        egTextField.snp.makeConstraints { make in
//            make.left.right.equalToSuperview()
//        }
//        egTextField.keyboardType = .decimalPad
//
//    }
//
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        self.view.endEditing(true)
//    }
//
//

