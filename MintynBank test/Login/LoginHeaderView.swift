//
//  LoginHeaderView.swift
//  MintynBank test
//
//  Created by Babatunde Oladotun on 24/11/2022.
//

import UIKit
class LoginHeaderView: UIView{
    let mainStackView = UIStackView()
    let leftStackView = UIStackView()
    let rightStackView = UIStackView()
    
    var insuranceUIView = UIView()
    var businessRegUIView = UIView()
    var openAccountUIView = UIView()
    var contactSupportUIView = UIView()
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var intrinsicContentSize: CGSize{
        return CGSize(width: 150, height: 150)
    }
}
extension LoginHeaderView{
    func style(){
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor(named: "backgroundColor")
        
        insuranceUIView.translatesAutoresizingMaskIntoConstraints = false
        let insuranceImage = UIImage(systemName: "shield.checkerboard")
        let insuranceStack = UIStackView()
        
        insuranceStack.translatesAutoresizingMaskIntoConstraints = false
        insuranceStack.axis = .horizontal
        insuranceStack.spacing = 0
        
        let insuranceLabel = UILabel()
        insuranceLabel.translatesAutoresizingMaskIntoConstraints = false
        insuranceLabel.text = "Insurance"
        insuranceLabel.font = UIFont.preferredFont(forTextStyle:.callout)
        
        let comingSoonLabel = UILabel()
        comingSoonLabel.translatesAutoresizingMaskIntoConstraints = false
        comingSoonLabel.text = "Coming soon ..."
        comingSoonLabel.font = UIFont.preferredFont(forTextStyle:.caption1)
        
        insuranceStack.addArrangedSubview(insuranceLabel)
        insuranceStack.addArrangedSubview(comingSoonLabel)
        
        insuranceUIView.translatesAutoresizingMaskIntoConstraints = false
        insuranceUIView = LoginHeaderItemView(withStack: insuranceStack, image: insuranceImage! ,frame: CGRect(origin: .zero, size: .zero))
        
        openAccountUIView.translatesAutoresizingMaskIntoConstraints = false
        let openAccountImage = UIImage(systemName: "shield.checkerboard")
        openAccountUIView = LoginHeaderItemView(withTitle: "Open an Account", image: openAccountImage! ,frame: CGRect(origin: .zero, size: .zero))
        
        
        businessRegUIView.translatesAutoresizingMaskIntoConstraints = false
        let businessRegImage = UIImage(systemName: "doc.on.doc.fill")
        businessRegUIView = LoginHeaderItemView(withTitle: "CAC Business Registration", image: businessRegImage! ,frame: CGRect(origin: .zero, size: .zero))
        
        contactSupportUIView.translatesAutoresizingMaskIntoConstraints = false
        let contactSupportImage = UIImage(named: "support")
        contactSupportUIView = LoginHeaderItemView(withTitle: "Contact Support", image: contactSupportImage!,frame: CGRect(origin: .zero, size: .zero))
        
        
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        mainStackView.axis = .horizontal
        mainStackView.spacing = 10
        mainStackView.distribution = .fillEqually
        mainStackView.alignment = .center
        
        leftStackView.translatesAutoresizingMaskIntoConstraints = false
        leftStackView.axis = .vertical
        leftStackView.spacing = 4
        leftStackView.distribution = .fillEqually
        leftStackView.backgroundColor = UIColor(named: "backgroundColor")
        //leftStackView.backgroundColor = .green
        
        rightStackView.translatesAutoresizingMaskIntoConstraints = false
        rightStackView.axis = .vertical
        rightStackView.spacing = 4
        rightStackView.distribution = .fillEqually
        rightStackView.backgroundColor = UIColor(named: "backgroundColor")
        //   rightStackView.backgroundColor  = .systemRed
        
    }
    
    func layout(){
        leftStackView.addArrangedSubview(insuranceUIView)
        leftStackView.addArrangedSubview(businessRegUIView)
        mainStackView.addArrangedSubview(leftStackView)
        rightStackView.addArrangedSubview(openAccountUIView)
        rightStackView.addArrangedSubview(contactSupportUIView)
        mainStackView.addArrangedSubview(rightStackView)
        
        addSubview(mainStackView)
        
        
        NSLayoutConstraint.activate([
            mainStackView.topAnchor.constraint(equalTo: topAnchor),
            mainStackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            mainStackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            mainStackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            
        ])
    }
}

