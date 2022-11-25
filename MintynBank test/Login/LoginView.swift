//
//  LoginView.swift
//  MintynBank test
//
//  Created by Babatunde Oladotun on 24/11/2022.
//

import UIKit
import FlagPhoneNumber
import FMSecureTextField

protocol LoginViewDelegate:AnyObject {
    func didLogin()
}

class LoginView: UIView{
    
    weak var delegate:LoginViewDelegate?
    
    let mainStackView = UIStackView()
    let forgetPasswordStackView = UIStackView()
    
    let phoneNoStackView = UIStackView()
    let phoneTextField =  FPNTextField()
    var listController: FPNCountryListViewController = FPNCountryListViewController(style: .grouped)
    let phoneNumberLabel = UILabel()
    
    let passwordStackView = UIStackView()
    let passwordTextField =  TextFieldWithPadding()
    let passwordLabel = UILabel()
    
    let divider = UIView()
    
    let rememberStackView = UIStackView()
    let checkBoxBtn = UIButton(type: .custom)
    let rememberMeLabel = UILabel()
    
    let forgetPasswordBtn = UIButton(type: .system)
    
    let loginBtn = UIButton(type: .roundedRect)
    
    let mainUnlockDeviceStackView = UIStackView()
    let unlockDeviceStackView = UIStackView()
    let poweredByStackview = UIStackView()
    let notUserLabel = UILabel()
    let unlockDeviceBtn = UIButton(type: .system)
    let poweredByLabel = UILabel()
    let versionLabel = UILabel()
    
    let spacer = UIView()
    let btnSpacer = UIView()
    
   
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var intrinsicContentSize: CGSize{
        return CGSize(width: 200, height: 200)
    }
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor(named:"gradientTop")!.cgColor,UIColor(named:"gradientBottom")!.cgColor]
        gradientLayer.frame = self.bounds
        gradientLayer.cornerRadius = 40
        self.layer.insertSublayer(gradientLayer, at: 0)
        
    }
}
extension LoginView{
    func style(){
        translatesAutoresizingMaskIntoConstraints = false
        
        layer.cornerRadius = 40
        layer.borderWidth = 0.5
        layer.borderColor = UIColor.systemBackground.cgColor
        
        //MainStackView
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        mainStackView.axis = .vertical
        mainStackView.spacing = 10
        mainStackView.distribution = .fill
        
        //ForgetPasswordStackView
        forgetPasswordStackView.translatesAutoresizingMaskIntoConstraints = false
        forgetPasswordStackView.axis = .horizontal
        forgetPasswordStackView.spacing = 8
        forgetPasswordStackView.distribution = .equalCentering
        
        //PhoneNoStackView
        phoneNoStackView.translatesAutoresizingMaskIntoConstraints = false
        phoneNoStackView.axis = .vertical
        phoneNoStackView.spacing = 2
        phoneNoStackView.distribution = .fillEqually
        
        //Phone number Label
        phoneNumberLabel.translatesAutoresizingMaskIntoConstraints = false
        phoneNumberLabel.text = "Phone Number"
        phoneNumberLabel.font = UIFont.preferredFont(forTextStyle: .subheadline)
        
        //Phone number TextField
        phoneTextField.translatesAutoresizingMaskIntoConstraints = false
        phoneTextField.borderStyle = .roundedRect
      
        phoneTextField.displayMode = .list // .picker by default

        listController.setup(repository: phoneTextField.countryRepository)

        listController.didSelect = { [weak self] country in
            self?.phoneTextField.setFlag(countryCode: country.code)
        }
        phoneTextField.font = .preferredFont(forTextStyle: .subheadline)

        phoneTextField.hasPhoneNumberExample = false
        phoneTextField.placeholder = "8022312332"

        phoneTextField.setFlag(countryCode: .NG)

        // Set the phone number directly
        phoneTextField.set(phoneNumber: "")

        
        //PasswordStackView
       passwordStackView.translatesAutoresizingMaskIntoConstraints = false
       passwordStackView.axis = .vertical
       passwordStackView.spacing = 4
       passwordStackView.distribution = .fillEqually
        
        //Password Label
        passwordLabel.translatesAutoresizingMaskIntoConstraints = false
        passwordLabel.text = "Password"
        passwordLabel.font = UIFont.preferredFont(forTextStyle: .subheadline)
        
        //Password TextField
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.font = UIFont.preferredFont(forTextStyle: .subheadline)
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.layer.cornerRadius = 10
        passwordTextField.layer.masksToBounds = true
        passwordTextField.delegate = self
        passwordTextField.enablePasswordToggle()
        
        //Divider
        divider.translatesAutoresizingMaskIntoConstraints = false
        divider.backgroundColor = .secondarySystemFill
        
        
        //CheckBox
        checkBoxBtn.translatesAutoresizingMaskIntoConstraints = false
        let configuration = UIImage.SymbolConfiguration(textStyle: .title1)
        checkBoxBtn.setImage(UIImage(systemName: "square",withConfiguration: configuration)?.withRenderingMode(.alwaysTemplate), for: .normal)
        checkBoxBtn.setImage(UIImage(systemName: "checkmark.square",withConfiguration: configuration)?.withRenderingMode(.alwaysTemplate), for: .selected)
        checkBoxBtn.addTarget(self, action: #selector(toggleCheckBox), for: .touchUpInside)
        checkBoxBtn.contentMode = .scaleAspectFit
        checkBoxBtn.tintColor = UIColor(named: "forgetColor")
       
        
        //RememberMe label
        rememberMeLabel.translatesAutoresizingMaskIntoConstraints = false
        rememberMeLabel.text = "Remember Me"
        rememberMeLabel.font = UIFont.preferredFont(forTextStyle: .subheadline)
        rememberMeLabel.textColor = .systemGray
        
        //RememberMe StackView
        rememberStackView.translatesAutoresizingMaskIntoConstraints = false
        rememberStackView.axis = .horizontal
        rememberStackView.spacing = 4
        rememberStackView.distribution = .fill
        
        
        //ForgetPasswordButton
        forgetPasswordBtn.translatesAutoresizingMaskIntoConstraints = false
        forgetPasswordBtn.setTitle("Forgot password?", for: .normal)
        forgetPasswordBtn.contentMode = .right
        forgetPasswordBtn.setTitleColor(UIColor(named: "forgetColor"), for: .normal)
        
        //LoginButton
        loginBtn.translatesAutoresizingMaskIntoConstraints = false
        loginBtn.setTitle("Login", for: .normal)
        loginBtn.setTitleColor(UIColor.white, for: .normal)
        loginBtn.layer.cornerRadius = 15
        loginBtn.clipsToBounds = true
        loginBtn.backgroundColor = UIColor(named: "forgetColor")
        loginBtn.addTarget(self, action: #selector(login), for: .touchUpInside)
        
        //MainUnlockDeviceStackView
        mainUnlockDeviceStackView.translatesAutoresizingMaskIntoConstraints = false
        mainUnlockDeviceStackView.axis = .vertical
        mainUnlockDeviceStackView.spacing = 12
        mainUnlockDeviceStackView.distribution = .fill
        
        //PoweredByStackView
        poweredByStackview.translatesAutoresizingMaskIntoConstraints = false
        poweredByStackview.axis = .vertical
        poweredByStackview.spacing = 0
        poweredByStackview.distribution = .fillEqually
        
        //UnlockDeviceStackView
        unlockDeviceStackView.translatesAutoresizingMaskIntoConstraints = false
        unlockDeviceStackView.axis = .horizontal
        unlockDeviceStackView.spacing = 4
        unlockDeviceStackView.distribution = .fillEqually
        unlockDeviceStackView.alignment = .center
        
        
        
        //NotUserName
        notUserLabel.translatesAutoresizingMaskIntoConstraints = false
        notUserLabel.text = "Not Babatunde?"
        notUserLabel.font = UIFont.preferredFont(forTextStyle: .subheadline)
        notUserLabel.textAlignment = .right
        
        //UnlockDeviceBtn
        unlockDeviceBtn.translatesAutoresizingMaskIntoConstraints = false
        unlockDeviceBtn.setTitle("Unlock Device", for: .normal)
        unlockDeviceBtn.setTitleColor(UIColor(named: "forgetColor"), for: .normal)
        unlockDeviceBtn.contentHorizontalAlignment = .left
        
        //PoweredBy Label
        poweredByLabel.translatesAutoresizingMaskIntoConstraints = false
        poweredByLabel.text = "Powered by FINEX MFB"
        poweredByLabel.font = UIFont.preferredFont(forTextStyle: .caption2)
        poweredByLabel.textAlignment = .center
        poweredByLabel.textColor = .systemGray
        
        versionLabel.translatesAutoresizingMaskIntoConstraints = false
        versionLabel.text = "Version 1.2.97"
       // poweredByLabel.font = UIFont.preferredFont(forTextStyle: .caption2)
        versionLabel.font = UIFont.systemFont(ofSize: 8.0)
        versionLabel.textAlignment = .center

        
        //Spacer
        spacer.translatesAutoresizingMaskIntoConstraints = false
        btnSpacer.translatesAutoresizingMaskIntoConstraints = false
    }
    func layout(){
        
        
        phoneNoStackView.addArrangedSubview(phoneNumberLabel)
        phoneNoStackView.addArrangedSubview(phoneTextField)
        mainStackView.addArrangedSubview(phoneNoStackView)
        passwordStackView.addArrangedSubview(passwordLabel)
        passwordStackView.addArrangedSubview(passwordTextField)
        mainStackView.addArrangedSubview(passwordStackView)
        rememberStackView.addArrangedSubview(checkBoxBtn)
        rememberStackView.addArrangedSubview(rememberMeLabel)
        forgetPasswordStackView.addArrangedSubview(rememberStackView)
        forgetPasswordStackView.addArrangedSubview(forgetPasswordBtn)
        mainStackView.addArrangedSubview(forgetPasswordStackView)
        mainStackView.addArrangedSubview(loginBtn)
        
        unlockDeviceStackView.addArrangedSubview(notUserLabel)
        unlockDeviceStackView.addArrangedSubview(unlockDeviceBtn)
        poweredByStackview.addArrangedSubview(unlockDeviceStackView)
        poweredByStackview.addArrangedSubview(poweredByLabel)
        mainUnlockDeviceStackView.addArrangedSubview(poweredByStackview)
        mainUnlockDeviceStackView.addArrangedSubview(versionLabel)
        mainStackView.addArrangedSubview(mainUnlockDeviceStackView)
        
        
        mainStackView.addArrangedSubview(spacer)
        addSubview(mainStackView)
        
        mainStackView.setCustomSpacing(mainStackView.spacing * 2, after: passwordStackView)
        mainStackView.setCustomSpacing(mainStackView.spacing * 2, after: forgetPasswordStackView)
        mainStackView.setCustomSpacing(mainStackView.spacing * 2, after: loginBtn)

        
        NSLayoutConstraint.activate([
            mainStackView.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 6),
            mainStackView.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 4),
            trailingAnchor.constraint(equalToSystemSpacingAfter:mainStackView.trailingAnchor,multiplier: 4),
            bottomAnchor.constraint(equalToSystemSpacingBelow: mainStackView.bottomAnchor, multiplier: 1)
        ])
        
        
        NSLayoutConstraint.activate([
            phoneTextField.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 0.1),
           // loginBtn.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 0.1),
            passwordTextField.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 0.1),
            divider.heightAnchor.constraint(equalToConstant: 0.5)
        ])
        
        NSLayoutConstraint.activate([
            poweredByStackview.heightAnchor.constraint(equalTo: mainStackView.widthAnchor, multiplier: 0.1),
            loginBtn.heightAnchor.constraint(equalTo: mainStackView.widthAnchor, multiplier: 0.15)
        ])
        
    }
}


//MARK: - UITextFieldDelegate

extension LoginView: UITextFieldDelegate{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        phoneTextField.endEditing(true)
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != "" {
            return true
        }else{
            return false
        }
        
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        // textField.layer.borderColor = .init(red: 0.922, green: 0.341, blue: 0.341, alpha: 1)
        
        if let text = textField.text{
            print(text)
            
        }
    }
    
    
    
}

//MARK: ACTIONS
extension LoginView{
    @objc func toggleCheckBox(_ sender: Any) {
        checkBoxBtn.isSelected.toggle()
    }
    
    @objc func login(_ sender: Any) {
        print("Login btn clicked")
        delegate?.didLogin()
    }
    
    
}
