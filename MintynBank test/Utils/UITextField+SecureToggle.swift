//
//  UITextField+SecureToggle.swift
//  MintynBank test
//
//  Created by Babatunde Oladotun on 23/11/2022.
//

import UIKit

let passwordToggleButton = UIButton(type: .custom)

extension UITextField {
    
    func enablePasswordToggle(){
        passwordToggleButton.setImage(UIImage(systemName: "eye"), for: .normal)
        passwordToggleButton.setImage(UIImage(systemName: "eye.slash"), for: .selected)
        passwordToggleButton.addTarget(self, action: #selector(togglePasswordView), for: .touchUpInside)
        passwordToggleButton.tintColor = UIColor.label
        rightView = passwordToggleButton
        rightViewMode = .always
        rightView?.contentMode = .left
       // bounds.inset(by: UIEdgeInsets(top: 0, left: 25, bottom: 0, right: 25))
    }
    
    @objc func togglePasswordView(_ sender: Any) {
        isSecureTextEntry.toggle()
        passwordToggleButton.isSelected.toggle()
    }
}
