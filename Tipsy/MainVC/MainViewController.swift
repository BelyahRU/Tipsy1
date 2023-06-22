import SnapKit
import UIKit

class MainViewController: MainVC {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupInfoStackView()
        setupSecondView()
        setupEnterBillTotalLabel()
        setupEgTextField()
        self.egTextField.delegate = self
        
        setupCalculateStackView()
        setupSelectTipLabel()
        
       
        setupZeroButton()
        setupTenButton()
        setupTwentyButton()
        setupButtonsPersentSV()
        setupChooseSplitLabel()
        
        setupStepperStackView()
        setupStepper()
        setupNumStepper()
        setupCalculateButton()
    }
}

