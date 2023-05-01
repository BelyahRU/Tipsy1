import SnapKit
import UIKit

class ViewController: UIViewController {
    
    var secondView = UIView()
    var infoStackView = UIStackView()
    var enterBillTotalLabel = UILabel()
    var egTextField = UITextField()
    var calculateStackView = UIStackView()
    var selectTipLabel = UILabel()
    var buttonsPersentStackView = UIStackView()
    var zeroPerButton = UIButton()
    var tenPerButton = UIButton()
    var twentyPerButton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupInfoStackView()
        setupSecondView()
        setupEnterBillTotalLabel()
        setupEgTextField()
        print("safsa")
        
    }
    
    private func setupInfoStackView() {
        
        view.addSubview(infoStackView)
        infoStackView.backgroundColor = .white
        infoStackView.axis = .vertical
        infoStackView.spacing = 26
        infoStackView.alignment = .center
        
        
        infoStackView.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.top.equalToSuperview().offset(69)
            make.bottom.equalToSuperview().offset(-679)
        }
        
        infoStackView.addArrangedSubview(enterBillTotalLabel)
        infoStackView.addArrangedSubview(egTextField)
    }
    
    private func setupEnterBillTotalLabel() {
        enterBillTotalLabel.font = UIFont(name: enterBillTotalLabel.font.fontName, size: 25)
        enterBillTotalLabel.text = "Enter bill total"
        enterBillTotalLabel.textColor = #colorLiteral(red: 0.753274262, green: 0.7732002139, blue: 0.7771559358, alpha: 1)
        enterBillTotalLabel.snp.makeConstraints { make in
            make.width.equalTo(293)
            make.height.equalTo(30)
        }
    }
    
    private func setupEgTextField() {
        egTextField.text = "e.g. 123.56"
        egTextField.font = UIFont(name: egTextField.font!.fontName, size: 40)
        egTextField.textAlignment = .center
        egTextField.textColor = #colorLiteral(red: 0.753274262, green: 0.7732002139, blue: 0.7771559358, alpha: 1)
        egTextField.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
        }
    }
    
    
    
    
    
    private func setupSecondView() {
        view.addSubview(secondView)
        secondView.backgroundColor = #colorLiteral(red: 0.8453745246, green: 0.976534903, blue: 0.9226958752, alpha: 1)
        secondView.snp.makeConstraints { make in
            
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.bottom.equalToSuperview()
            make.top.equalTo(infoStackView.snp.bottom).offset(40)
        }
    }
}
