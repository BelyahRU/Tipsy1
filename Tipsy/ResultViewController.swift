//
//  testVC.swift
//  Tipsy
//
//  Created by Александр Андреев on 07.07.2023.
//

import Foundation

import UIKit

class testVC: UIViewController {
    
    var resultView = ResultView()
    
    var result: Double = 0
    
    var countPeople: Int = 0
    
    var persent: String = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        changeView()
        setupRecalcButton()
    }
    
    func setupView() {
        view.addSubview(resultView)
        resultView.backgroundColor = .white
        resultView.snp.makeConstraints { make in
            make.bottom.equalToSuperview()
            make.top.equalToSuperview()
            make.right.equalToSuperview()
            make.left.equalToSuperview()
        }
    }
    
    func setupRecalcButton() {
        resultView.recalculateButton.addTarget(self, action: #selector(recalcPressed), for: .touchUpInside)
    }
    
    func changeView() {
        resultView.resultLabel.text = String(result)
        
        resultView.infoLabel.text = "Split between \(countPeople) people, with \(persent)% tip. "
    }
    
    @objc func recalcPressed() {
        dismiss(animated: true)
    }
    
}
