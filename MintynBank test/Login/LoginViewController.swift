//
//  LoginViewController.swift
//  MintynBank test
//
//  Created by Babatunde Oladotun on 24/11/2022.
//

import Foundation

import UIKit
import FlagPhoneNumber
import FMSecureTextField

protocol LoginViewControllerDelegate:AnyObject {
    func didLogin()
}

class LoginViewController: UIViewController {
    let header = LoginHeaderView()
    let loginView = LoginView()
    var listController: FPNCountryListViewController = FPNCountryListViewController(style: .grouped)
    
    weak var delegate:LoginViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
}

extension LoginViewController {
    func style() {
        view.backgroundColor = UIColor(named: "backgroundColor") // ! dont forget
        self.hideKeyboardWhenTappedAround()
        //LoginHeader
        header.translatesAutoresizingMaskIntoConstraints = false
        
        //LoginView
        loginView.translatesAutoresizingMaskIntoConstraints = false
        loginView.delegate = self
        let phoneNumberTextField = loginView.phoneTextField
        
        listController.setup(repository: phoneNumberTextField.countryRepository)

        listController.didSelect = {  country in
            phoneNumberTextField.setFlag(countryCode: country.code)
        }

        phoneNumberTextField.delegate = self
        
        // Example of customizing the textField input accessory view
        let items = [
            UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.save, target: self, action: nil),
            UIBarButtonItem(title: "Item 1", style: .plain, target: self, action: nil),
            UIBarButtonItem(title: "Item 2", style: .plain, target: self, action: nil)
        ]
        phoneNumberTextField.textFieldInputAccessoryView = getCustomTextFieldInputAccessoryView(with: items)

        phoneNumberTextField.hasPhoneNumberExample = false
        phoneNumberTextField.placeholder = "8012312530"

        phoneNumberTextField.setFlag(countryCode: .NG)

        // Set the phone number directly
        phoneNumberTextField.set(phoneNumber: "")


        
        
        
    }
    
    func layout() {
       
        view.addSubview(header)
        view.addSubview(loginView)
        
        NSLayoutConstraint.activate([
            header.topAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.topAnchor, multiplier: 1),
            header.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: header.trailingAnchor, multiplier: 1),
            header.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25)
        ])
        
        //Login
        NSLayoutConstraint.activate([
          //  loginView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
           loginView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1),
            loginView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.55),
            view.bottomAnchor.constraint(equalToSystemSpacingBelow: loginView.bottomAnchor, multiplier: 0)
            //loginView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
}

extension LoginViewController:LoginViewDelegate{
    func didLogin() {
        if let scene = UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate {
            let dashboardViewController = DashboardViewController()
            scene.setRootViewController(dashboardViewController)
        }
        
    }
    
    
}

extension LoginViewController: FPNTextFieldDelegate {

    func fpnDidValidatePhoneNumber(textField: FPNTextField, isValid: Bool) {
        if loginView.phoneTextField.text!.count > 7 {
            if isValid {
                //goodNum = 1
                //print(goodNum)
            } else {
              //  goodNum = 0
            }
        }
    }

    func fpnDidSelectCountry(name: String, dialCode: String, code: String) {
        print(name, dialCode, code)
    }


    func fpnDisplayCountryList() {
        let navigationViewController = UINavigationController(rootViewController: listController)

        listController.title = "Countries"
        listController.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .stop, target: self, action: #selector(dismissCountries))

        self.present(navigationViewController, animated: true, completion: nil)
    }
}

extension LoginViewController{
    @objc func dismissCountries() {
        listController.dismiss(animated: true, completion: nil)
    }
    
    private func getCustomTextFieldInputAccessoryView(with items: [UIBarButtonItem]) -> UIToolbar {
        let toolbar: UIToolbar = UIToolbar()

        toolbar.barStyle = UIBarStyle.default
        toolbar.items = items
        toolbar.sizeToFit()

        return toolbar
    }
}
