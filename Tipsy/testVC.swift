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
    private var secondView = ssecondView()
    private lazy var calculateButton = CustomButton(title: "Calculate")
    private var infStackView = infoStackView()
    private var buttonsSV = buttonsStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addSubviews()
        setupConstraints()
        //setupButtonsPersentSV()
    }
    
}



// MARK: INFO STACKVIEW
extension testVC {
    
    
    func addSubviews() {
        view.addSubview(infStackView)
        view.addSubview(secondView)
        view.addSubview(calculateButton)
    }
    
    func setupCalculateButton() {
        calculateButton.addTarget(self, action: #selector(touchButton), for: .touchUpInside)
    }
    
    func setupConstraints(){
        secondView.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.bottom.equalToSuperview()
            make.top.equalTo(infStackView.snp.bottom).offset(40)
        }
        infStackView.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.top.equalToSuperview().offset(69)
            make.bottom.equalToSuperview().offset(-679)
        }
        calculateButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.height.equalTo(54)
            make.width.equalTo(200)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
        }
    }
    @objc func touchButton() {
//        var bill = Double(egTextField.text!)!
//           print(bill)
    }
    
}
