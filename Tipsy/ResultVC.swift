import SnapKit
import UIKit

class ResultVC: UIViewController {
    
    //MARK: Properties
    private var totalPerPersonLabel = UILabel()
    private var resultLabel = UILabel()
    private var recalculateButton = UIButton(type: .system)
    private var secondView = UIView()
    private var infoLabel = UILabel()
    
}


extension ResultVC {
    
    func setupSecondView() {
        view.addSubview(secondView)
        secondView.backgroundColor = UIColor(named: Resources.Colors.backgroundColor)
        //secondView.backgroundColor = .black
        secondView.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.top.equalToSuperview()
            make.bottom.equalToSuperview().inset(552)
        }
    }
    
    func setupTotalPerPersonLabel() {
        secondView.addSubview(totalPerPersonLabel)
        totalPerPersonLabel.font = UIFont(name: Resources.fontName.system, size: 30)
        totalPerPersonLabel.text = "Total per person"
        totalPerPersonLabel.textColor = UIColor(named: Resources.Colors.grayColor)
        totalPerPersonLabel.textAlignment = .center
        totalPerPersonLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(132)
            make.left.equalToSuperview()
            make.right.equalToSuperview()
        }
    }
    
    func setupResultLabel() {
        secondView.addSubview(resultLabel)
        resultLabel.font = UIFont(name: Resources.fontName.systemBold, size: 45)
        resultLabel.text = "56.32"
        resultLabel.textColor = UIColor(named: Resources.Colors.greenColor)
        resultLabel.textAlignment = .center
        resultLabel.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.top.equalTo(totalPerPersonLabel.snp.bottom)
            make.bottom.equalTo(secondView.snp.bottom).inset(32)
        }
    }
}

extension ResultVC {
    
    func setupInfoLabel() {
        view.addSubview(infoLabel)
        infoLabel.text = "Split between 2 people, with 10% tip."
        infoLabel.font = UIFont(name: Resources.fontName.system, size: 25)
        infoLabel.textColor = UIColor(named: Resources.Colors.grayColor)
        infoLabel.numberOfLines = 0
        infoLabel.textAlignment = .center
        
        infoLabel.snp.makeConstraints { make in
            make.width.equalTo(293)
            make.height.equalTo(117)
            make.centerX.equalToSuperview()
            make.top.equalTo(secondView.snp.bottom).offset(5)
        }
    }
}

extension ResultVC {
    
    func setupRecalculateButton() {
        view.addSubview(recalculateButton)
        recalculateButton.backgroundColor = UIColor(named: Resources.Colors.greenColor)
        recalculateButton.setTitle("Recalculate", for: .normal)
        recalculateButton.setTitleColor(.white, for: .normal)
        recalculateButton.titleLabel?.font = UIFont(name: Resources.fontName.system, size: 35)
        recalculateButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.height.equalTo(54)
            make.width.equalTo(200)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
        }
    }
}
