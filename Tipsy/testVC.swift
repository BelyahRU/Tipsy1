//
//  testVC.swift
//  Tipsy
//
//  Created by Александр Андреев on 29.06.2023.
//

import Foundation

import UIKit

class testVC: UIViewController {
    
    //MARK: properties
    private var secondView = UIView()
    private var infStackView = infoStackView()
    private var buttonsSV = buttonsStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupInfoStackView()
        setupButtonsPersentSV()
    }
    
}

// MARK: INFO STACKVIEW
extension testVC {
    func setupInfoStackView() {
        
        view.addSubview(infStackView)
        infStackView.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.top.equalToSuperview().offset(69)
            make.bottom.equalToSuperview().offset(-679)
        }
        
        
    }
    
    func setupButtonsPersentSV() {
        view.addSubview(buttonsSV)
        buttonsSV.backgroundColor = .clear
        buttonsSV.snp.makeConstraints { make in
            make.top.equalTo(infStackView.snp.bottom)
            make.height.equalTo(54)
            make.left.equalToSuperview()
            make.right.equalToSuperview()
        }
    }
}
