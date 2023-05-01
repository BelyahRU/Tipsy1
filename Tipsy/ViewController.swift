import SnapKit
import UIKit

class ViewController: UIViewController {
    
    var secondView = UIView()
    var infoStackView = UIStackView()
    var enterBillTotalLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupInfoStackView()
        setupSecondView()
        
    }
    
    private func setupInfoStackView() {
        view.addSubview(infoStackView)
        infoStackView.backgroundColor = .gray
        infoStackView.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.top.equalToSuperview().offset(69)
            make.bottom.equalToSuperview().offset(-679)
        }
    }
    
    private func setupSecondView() {
        view.addSubview(secondView)
        secondView.backgroundColor = .red
        secondView.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.bottom.equalToSuperview()
            make.top.equalTo(infoStackView.snp.bottom).offset(40)
        }
    }
}
