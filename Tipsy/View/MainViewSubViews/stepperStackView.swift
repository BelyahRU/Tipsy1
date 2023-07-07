import UIKit

class stepperStackView : UIStackView {
    
    private lazy var stepper: UIStepper = {
        let stepper = UIStepper()
        stepper.backgroundColor = .clear
        stepper.minimumValue = 1
        stepper.maximumValue = 10
        stepper.value = stepper.minimumValue
        stepper.stepValue = 1
        stepper.addTarget(self, action: #selector(stepperValueChanged), for: .valueChanged)
        return stepper
    }()
    
    private lazy var numStepper: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: Resources.fontName.system, size: 35)
        //text
        label.text = String(Int(stepper.value))
        label.textColor = UIColor(named: Resources.Colors.greenColor)
        label.textAlignment = .center
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupStepperStackView()
        addSubviews()
        setupConstraints()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
    private func setupStepperStackView() {
        axis = .horizontal
        alignment = .fill
        distribution = .fill
        spacing = 27
    }
    
    private func addSubviews() {
        addArrangedSubview(numStepper)
        addArrangedSubview(stepper)
    }
    
    private func setupConstraints() {
        stepper.snp.makeConstraints { make in
            make.height.equalTo(29)
            make.width.equalTo(94)
        }
        numStepper.snp.makeConstraints { make in
            make.height.equalTo(29)
            make.width.equalTo(93)
        }
    }
    
    @objc func stepperValueChanged() {
        numStepper.text = String(Int(stepper.value))
    }
    
    func getCountGuests() -> Int {
        return Int(numStepper.text!)!
    }
}
