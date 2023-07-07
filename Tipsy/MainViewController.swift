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
        let bill = Double(mainView.infStackView.getBill()!)!
        
        let countGuests = mainView.secondView.calculateSV.stepperSV.getCountGuests()
        
        let typeButt = mainView.secondView.calculateSV.butttonsPersentSV.getButton()
        
        
        calculate.addBill(bill)
        calculate.addCountGuests(countGuests)
        calculate.addTypePersentage(typeButt)
        
        
        
        let VC = testVC()
        VC.countPeople = countGuests
        VC.persent = typeButt
        VC.result = calculate.getAnswer()
        present(VC, animated: true)
    }
    
}

