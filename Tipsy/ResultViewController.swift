import UIKit

class ResultViewController: ResultVC {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupSecondView()
        setupTotalPerPersonLabel()
        setupResultLabel()
        setupInfoLabel()
        setupRecalculateButton()
    }
    
}
