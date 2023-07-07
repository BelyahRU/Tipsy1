//
//  ResultView.swift
//  Tipsy
//
//  Created by Александр Андреев on 07.07.2023.
//

import Foundation
import UIKit

class ResultView: UIView {
    lazy var totalPerPersonLabel: UILabel = {
        var label = UILabel()
        label.font = UIFont(name: Resources.fontName.system, size: 30)
        label.text = "Total per person"
        label.textColor = UIColor(named: Resources.Colors.grayColor)
        label.textAlignment = .center
        return label
    }()
    
    lazy var resultLabel: UILabel = {
        var label = UILabel()
        label.font = UIFont(name: Resources.fontName.systemBold, size: 45)
        //label.text = "56.32"
        label.textColor = UIColor(named: Resources.Colors.greenColor)
        label.textAlignment = .center
        return label
    }()
    
    var recalculateButton = CustomButton(title: "Recalculate")
    
    var secondView: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor(named: Resources.Colors.backgroundColor)
        return view
    }()
    
    var infoLabel: UILabel = {
        var label = UILabel()
        //label.text = "Split between 2 people, with 10% tip."
        label.font = UIFont(name: Resources.fontName.system, size: 25)
        label.textColor = UIColor(named: Resources.Colors.grayColor)
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubviews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupSubviews() {
        addSubview(secondView)
        addSubview(infoLabel)
        addSubview(recalculateButton)
        secondView.addSubview(totalPerPersonLabel)
        secondView.addSubview(resultLabel)
        
    }
    
    func setupConstraints() {
        secondView.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.top.equalToSuperview()
            make.bottom.equalToSuperview().inset(552)
        }
        
        totalPerPersonLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(120)
            make.left.equalToSuperview()
            make.right.equalToSuperview()
        }
        
        resultLabel.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.top.equalTo(totalPerPersonLabel.snp.bottom)
            make.bottom.equalTo(secondView.snp.bottom).inset(32)
        }
        
        infoLabel.snp.makeConstraints { make in
            make.width.equalTo(293)
            make.height.equalTo(117)
            make.centerX.equalToSuperview()
            make.top.equalTo(secondView.snp.bottom).offset(5)
        }
        
        recalculateButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.height.equalTo(54)
            make.width.equalTo(200)
            make.bottom.equalTo(safeAreaLayoutGuide.snp.bottom)
        }
        
    }
}
