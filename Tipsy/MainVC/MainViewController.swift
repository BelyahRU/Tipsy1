import SnapKit
import UIKit

class MainViewController: UIViewController {
    
    private var mainView = MainView()
    private var calculate = Calculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupMainView()
        setupTargetCalculateButton()
    }
    
    func setupMainView() {
        view.addSubview(mainView)
        mainView.snp.makeConstraints { make in
            make.bottom.equalToSuperview()
            make.top.equalToSuperview()
            make.right.equalToSuperview()
            make.left.equalToSuperview()
        }
    }
    func setupTargetCalculateButton() {
        mainView.calculateButton.addTarget(self, action: #selector(touchCalculate), for: .touchUpInside)
    }
    @objc func touchCalculate() {
        let bill = mainView.infStackView.egTextField.text!
        
        let countGuests = mainView.secondView.calculateSV.stepperSV.numStepper.text!
        let typeButt = mainView.secondView.calculateSV.butttonsPersentSV.pressedButtonn
        
        print(Int(countGuests)!)
        print(Double(bill)!)
        print(typeButt)
        calculate.addBill(Double(bill)!)
        calculate.addCountGuests(Int(countGuests)!)
        calculate.addTypePersentage(typeButt)
        
        print(calculate.getAnswer())
    }
    
}

