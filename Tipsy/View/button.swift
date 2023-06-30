//
//  button.swift
//  Tipsy
//
//  Created by Александр Андреев on 29.06.2023.
//

import Foundation

import UIKit


class CustomButton: UIButton {
    
    let color = UIColor(named: Resources.Colors.greenColor)
    
    
    // вспомогательный инициализатор
    convenience init(title: String, type: UIButton.ButtonType = .system) {
        self.init(type: type)
        setupButton(with: title)
    }
    
    private func setupButton(with title: String) {
        setTitle(title, for: .normal)
        titleLabel?.font = UIFont.systemFont(ofSize: 35)

//        if title == "Calculate" || title == "Recalculate" {
//            backgroundColor = color
//            layer.cornerRadius = 10
//            setTitleColor(.white, for: .normal)
//        } else {
//            tintColor = color
//            setTitleColor(color, for: .normal)
//        }
        translatesAutoresizingMaskIntoConstraints = false
    }
}

