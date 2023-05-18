//
//  MainView.swift
//  SwiftStudy
//
//  Created by Schro on 2023/05/16.
//

import UIKit
import Then
import SnapKit

class MainView: UIView {
    var textField: UITextField?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        uiSetup()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        uiSetup()
    }
    private func uiSetup() {
        setViews()
        setConstraints()
        addView()
    }
    private func setViews() {
        textField = UITextField().then {
            $0.layer.backgroundColor = CGColor(red: 255.0, green: 255.0, blue: 0.0, alpha: 1.0)
            $0.text = "TEST"
            $0.textColor = .white
        }
    }
    private func setConstraints() {
//        let safeArea = super.safeAreaLayoutGuide.snp
        
        guard let textField = self.textField else { return }
        textField.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(0)
            make.leading.equalTo(0)
            make.trailing.equalTo(0)
            make.height.equalTo(100)
        }
    }
    private func addView() {
        guard let textField = self.textField else { return }
        self.addSubview(textField)
    }
}
