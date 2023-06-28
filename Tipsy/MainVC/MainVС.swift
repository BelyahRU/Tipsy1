import SnapKit
import UIKit

class MainVC: UIViewController, UITextFieldDelegate {
    
    //MARK: properties
    private var secondView = UIView()
    private var infStackView = infoStackView()
    
    private var calculateStackView = UIStackView()
    private var selectTipLabel = UILabel()
    private var zeroPerButton = UIButton(type: .system)
    private var tenPerButton = UIButton(type: .system)
    private var twentyPerButton = UIButton(type: .system)
    private var buttonsPersentSV = UIStackView()
    private var chooseSplitLabel = UILabel()
    private var stepperStackView = UIStackView()
    private var stepper = UIStepper()
    private var numStepper = UILabel()
    private var calculateButton = UIButton(type: .system)
    
}



// MARK: INFO STACKVIEW
extension MainVC {
    func setupInfoStackView() {
        
        view.addSubview(infStackView)
        infStackView.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.top.equalToSuperview().offset(69)
            make.bottom.equalToSuperview().offset(-679)
        }
        
        
    }
}


// MARK: SECOND VIEW
extension MainVC {
    func setupSecondView() {
        view.addSubview(secondView)
        secondView.backgroundColor = UIColor (named: Resources.Colors.backkgroundColor)
        //secondView.backgroundColor = .green
        
        
        secondView.snp.makeConstraints { make in
            
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.bottom.equalToSuperview()
            make.top.equalTo(infStackView.snp.bottom).offset(40)
        }
    }
}

//MARK: Calculation Stack View

extension MainVC {
    func setupCalculateStackView() {
        
        secondView.addSubview(calculateStackView)
        calculateStackView.axis = .vertical
        //calculateStackView.backgroundColor = .black
        calculateStackView.spacing = 26
        calculateStackView.alignment = .center
        calculateStackView.distribution = .fill
        
        calculateStackView.snp.makeConstraints { make in
            make.left.equalTo(secondView.snp.left).offset(20)
            make.right.equalTo(secondView.snp.right).offset(-20)
            make.top.equalTo(secondView.snp.top).offset(20)
            make.bottom.equalTo(-398)
        }
        calculateStackView.addArrangedSubview(selectTipLabel)
        calculateStackView.addArrangedSubview(buttonsPersentSV)
        calculateStackView.addArrangedSubview(chooseSplitLabel)
        calculateStackView.addArrangedSubview(stepperStackView)
        
    }
    
    func setupSelectTipLabel() {
        selectTipLabel.text = "Select tip"
        selectTipLabel.font = UIFont(name: Resources.fontName.system, size: 25)
        selectTipLabel.textColor = UIColor(named: Resources.Colors.grayColor)
        selectTipLabel.snp.makeConstraints { make in
            make.width.equalTo(293)
            make.centerX.equalToSuperview()
            make.height.equalTo(30)
            
            
        }
    }
}



// MARK: BUTTON PERSENT STACKVIEW
extension MainVC {
    func setupButtonsPersentSV() {
        buttonsPersentSV.axis = .horizontal
        buttonsPersentSV.alignment = .fill
        buttonsPersentSV.distribution = .fillProportionally
        buttonsPersentSV.spacing = 0
        buttonsPersentSV.contentMode = .scaleToFill
        
        buttonsPersentSV.snp.makeConstraints { make in
            make.height.equalTo(54)
            make.left.equalTo(calculateStackView.snp.left)
            make.right.equalTo(calculateStackView.snp.right)
        }
        
        buttonsPersentSV.addArrangedSubview(zeroPerButton)
        buttonsPersentSV.addArrangedSubview(tenPerButton)
        buttonsPersentSV.addArrangedSubview(twentyPerButton)
        
        //Делаем центральную кнопку больше, а 2 другие одинаковые
        let widthConstraint = zeroPerButton.widthAnchor.constraint(equalTo: twentyPerButton.widthAnchor)
        widthConstraint.isActive = true
        let middleButtonWidthMultiplier: CGFloat = 1.6
        
        let middleButtonWidthConstraint = tenPerButton.widthAnchor.constraint(equalTo: zeroPerButton.widthAnchor, multiplier: middleButtonWidthMultiplier)
        middleButtonWidthConstraint.isActive = true
        
    }
        
    func setupChooseSplitLabel() {
            chooseSplitLabel.text = "Choose Split"
            chooseSplitLabel.font = UIFont(name: Resources.fontName.system, size: 25)
            chooseSplitLabel.textColor = UIColor(named: Resources.Colors.grayColor)
            chooseSplitLabel.snp.makeConstraints { make in
                make.width.equalTo(293)
                make.height.equalTo(30)
            }
    }
    
    
    func setupButton(_ button: UIButton, _ type: String) {
        
        button.setTitle(type, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        button.setTitleColor(UIColor(named: Resources.Colors.greenColor), for: .normal)
        
        
        button.snp.makeConstraints { make in
            
            make.height.equalTo(54)
        }
    }
    
    func buttonPressed(_ button: UIButton) {
        button.tintColor = UIColor(red: 0/255, green: 176/255, blue: 107/255, alpha: 1)
        button.setTitleColor(UIColor(named: Resources.Colors.greenColor), for: .normal)
        //Создает нужный нам эффект
        button.isSelected = true
        print(1)
    }
    
    // 0% button
    func setupZeroButton() {
        setupButton(zeroPerButton, "0%")
        zeroPerButton.addTarget(self, action: #selector(zeroPressed), for: .touchUpInside)
    }
    
    
    // 10% button
    func setupTenButton() {
        setupButton(tenPerButton, "10%")
        tenPerButton.addTarget(self, action: #selector(tenPressed), for: .touchUpInside)
        
    }

    // 20% button
    func setupTwentyButton() {
        setupButton(twentyPerButton, "20%")
        twentyPerButton.addTarget(self, action: #selector(twentyPressed), for: .touchUpInside)
    }
    
    @objc func tenPressed() {
        buttonPressed(tenPerButton)
        zeroPerButton.isSelected = false
        twentyPerButton.isSelected = false
    }
    
    @objc func zeroPressed() {
        buttonPressed(zeroPerButton)
        twentyPerButton.isSelected = false
        tenPerButton.isSelected = false
    }
    @objc func twentyPressed() {
        buttonPressed(twentyPerButton)
        tenPerButton.isSelected = false
        zeroPerButton.isSelected = false
    }
}

//MARK: STEPPER STACKVIEW
extension MainVC {
    
    func setupStepperStackView() {
        stepperStackView.axis = .horizontal
        stepperStackView.alignment = .fill
        stepperStackView.distribution = .fill
        stepperStackView.spacing = 27
        
        stepperStackView.addArrangedSubview(numStepper)
        stepperStackView.addArrangedSubview(stepper)
    }
    
    func setupStepper() {
        stepper.backgroundColor = .clear
        stepper.snp.makeConstraints { make in
            make.height.equalTo(29)
            make.width.equalTo(94)
        }
        
        stepper.minimumValue = 1
        stepper.maximumValue = 10
        stepper.value = stepper.minimumValue
        stepper.stepValue = 1
        stepper.addTarget(self, action: #selector(stepperValueChanged), for: .valueChanged)
    }
    
    @objc func stepperValueChanged() {
        numStepper.text = String(Int(stepper.value))
    }
    
    
    // fix
    func setupNumStepper() {
        numStepper.font = UIFont(name: Resources.fontName.system, size: 35)
        //text
        numStepper.text = String(Int(stepper.value))
        numStepper.textColor = UIColor(named: Resources.Colors.greenColor)
        numStepper.textAlignment = .center
        numStepper.snp.makeConstraints { make in
            make.height.equalTo(29)
            make.width.equalTo(93)
        }
    }
    
}


//MARK: CALCULATE BUTTON
extension MainVC {
    func setupCalculateButton() {
        view.addSubview(calculateButton)
        calculateButton.backgroundColor = UIColor(named: Resources.Colors.greenColor)
        calculateButton.setTitle("Calculate", for: .normal)
        calculateButton.setTitleColor(.white, for: .normal)
        calculateButton.titleLabel?.font = UIFont(name: Resources.fontName.system, size: 35)
        calculateButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.height.equalTo(54)
            make.width.equalTo(200)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
        }
//        calculateButton.addTarget(self, action: #selector(touchButton), for: .touchUpInside)
        
    }
//    @objc func touchButton() {
//        var bill = Double(egTextField.text!)!
//        print(bill)
//    }
    
}



