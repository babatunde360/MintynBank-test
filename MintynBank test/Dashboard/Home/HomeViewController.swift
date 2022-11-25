//
//  HomeViewController.swift
//  MintynBank test
//
//  Created by Babatunde Oladotun on 24/11/2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    let headerUIVew = UIView()
    let mintynLogo = UIImageView()
    let notificationIcon = UIButton(type: .custom)
    
    let bodyScrollView = UIScrollView()
    let contentUIView = UIView()
    
    
    let profileUIView = UIView()
    let profileMainStackView = UIStackView()
    let profileSubStackView = UIStackView()
    let profileImageView = UIImageView()
    let profileNameStackView = UIStackView()
    let profileNameUIView = UIView()
    let profileNameLabel = UILabel()
    let profileMinStackView = UIStackView()
    let profileTypeLabel = UILabel()
    let profileAccNumberLabel = UILabel()
    let profileLevelLabel = UILabel()
    
    let switchUIView = UIView()
    let switchStackView = UIStackView()
    let switchAccountLabel = UILabel()
    let switchImageView = UIImageView()
    
    let addMoneyUIView = UIView()
    let addMoneyStackView = UIStackView()
    let balanceLabel = UILabel()
    let addMoneyBtn = UIButton()
    
    
    let ledgerBalanceUIView = UIView()
    let ledgerBalanceStackView = UIStackView()
    
    let ledgerStackView = UIStackView()
    let ledgerLabel = UILabel()
    let ledgerAmountLabel = UILabel()
    let hideBalanceStackView = UIStackView()
    let hideBalanceSwitch = UISwitch()
    let hideBalanceLabel = UILabel()
    
    let midUIView = UIView()
    let midStackView = UIStackView()
    let productUpdateUIView = UIView()
    let giftCardUpdateUIView = UIView()
    let cardlessUIVew = UIView()
    
    let quickAccessUIView = UIView()
    let quickAccessLabel = UILabel()
    let quickAccessMainStackView = UIStackView()
    let quickAccessStackView = UIStackView()
    var transferUIView = UIView()
    var topUIView = UIView()
    var payBillUIView = UIView()
    var savingsUIView = UIView()
    
    let exploreUIView = UIView()
    let exploreLabel = UILabel()
    let exploreMainStackView = UIStackView()
    let exploreStackView = UIStackView()
    var investmentUIView = UIView()
    var marketplaceUIView = UIView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        viewDidAppearStyle()
    }
}

extension HomeViewController {
    func style() {
        view.backgroundColor = .systemBackground // ! dont forget
        
        //HeaderUIView
        headerUIVew.translatesAutoresizingMaskIntoConstraints = false
        headerUIVew.backgroundColor = .systemBackground
        
        notificationIcon.translatesAutoresizingMaskIntoConstraints = false
        let configuration = UIImage.SymbolConfiguration(textStyle: .subheadline)
        let image = UIImage(systemName: "bell.fill",withConfiguration: configuration)?.withRenderingMode(.alwaysTemplate)
        notificationIcon.contentMode = .scaleAspectFit
        notificationIcon.setImage(image, for: .normal)
        notificationIcon.tintColor = UIColor(named: "notificationColor")
        
        //ProfileUIView
        profileUIView.translatesAutoresizingMaskIntoConstraints = false
        
        profileMainStackView.translatesAutoresizingMaskIntoConstraints = false
        profileMainStackView.axis = .horizontal
        profileMainStackView.spacing = 2
        profileMainStackView.distribution = .fill
        
        
        profileSubStackView.translatesAutoresizingMaskIntoConstraints = false
        profileSubStackView.axis = .horizontal
        profileSubStackView.spacing = 2
        profileSubStackView.distribution = .fill
        //profileSubStackView.alignment = .center
        
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        
        let profileConfiguration = UIImage.SymbolConfiguration(textStyle: .body)
        let profileImage = UIImage(systemName: "person.circle.fill",withConfiguration: profileConfiguration)?.withRenderingMode(.alwaysTemplate)
        profileImageView.contentMode = .scaleAspectFit
        profileImageView.image = profileImage
        
        
        profileNameUIView.translatesAutoresizingMaskIntoConstraints = false
        
        profileNameStackView.translatesAutoresizingMaskIntoConstraints = false
        profileNameStackView.axis = .vertical
        profileNameStackView.spacing = 2
        profileNameStackView.distribution = .equalSpacing
        
        
        profileNameLabel.translatesAutoresizingMaskIntoConstraints = false
        profileNameLabel.text = "Adedayo Apenku"
        profileNameLabel.font = .preferredFont(forTextStyle: .subheadline)
        
        profileMinStackView.translatesAutoresizingMaskIntoConstraints = false
        profileMinStackView.axis = .horizontal
        profileMinStackView.spacing = 0
        profileMinStackView.distribution = .fillEqually
        
        profileTypeLabel.translatesAutoresizingMaskIntoConstraints = false
        profileTypeLabel.text = "Individual"
        profileTypeLabel.font = .preferredFont(forTextStyle: .caption2)
        profileTypeLabel.textColor = .systemGray
        
        profileAccNumberLabel.translatesAutoresizingMaskIntoConstraints = false
        profileAccNumberLabel.text = "1005730939"
        profileAccNumberLabel.font = .preferredFont(forTextStyle: .caption2)
        profileAccNumberLabel.textColor = .systemGray
        
        
        profileLevelLabel.translatesAutoresizingMaskIntoConstraints = false
        profileLevelLabel.text = " .Tier 1"
        profileLevelLabel.textAlignment = .justified
        profileLevelLabel.font = .preferredFont(forTextStyle: .caption2)
        profileLevelLabel.textColor = #colorLiteral(red: 0.7960000038, green: 0.6200000048, blue: 0.2310000062, alpha: 1)
        
//        profileTypeLabel.backgroundColor = .red
//        profileAccNumberLabel.backgroundColor = .yellow
//        profileLevelLabel.backgroundColor = .gray
        
        //SwitchUIView
        switchUIView.translatesAutoresizingMaskIntoConstraints = false
        
        
        //SwtichAccount
        switchStackView.translatesAutoresizingMaskIntoConstraints = false
        switchStackView.axis = .vertical
        switchStackView.spacing = 4
        switchStackView.distribution = .fill
        
        
        switchAccountLabel.translatesAutoresizingMaskIntoConstraints = false
        switchAccountLabel.text = "Switch Account"
        switchAccountLabel.font = .preferredFont(forTextStyle: .footnote)
        
        switchImageView.translatesAutoresizingMaskIntoConstraints = false
        let switchConfiguration = UIImage.SymbolConfiguration(textStyle: .body)
        let switchImage = UIImage(systemName: "arrowtriangle.down.fill",withConfiguration: switchConfiguration)?.withRenderingMode(.alwaysTemplate)
        switchImageView.contentMode = .scaleAspectFit
        switchImageView.image = switchImage
        switchImageView.tintColor = .systemGray
        
        
        //AddMoneyUIView
        addMoneyUIView.translatesAutoresizingMaskIntoConstraints = false
        addMoneyUIView.layer.cornerRadius = 8
        addMoneyUIView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        
        addMoneyStackView.translatesAutoresizingMaskIntoConstraints = false
        addMoneyStackView.axis = .horizontal
        addMoneyStackView.spacing = 4
        addMoneyStackView.distribution = .equalCentering
        
        balanceLabel.translatesAutoresizingMaskIntoConstraints = false
        balanceLabel.text = "1000.00"
        balanceLabel.font = UIFont.preferredFont(forTextStyle: .title3)
        
        addMoneyBtn.translatesAutoresizingMaskIntoConstraints = false
        addMoneyBtn.setTitle("+ ADD MONEY", for: .normal)
        addMoneyBtn.setTitleColor(UIColor.white, for: .normal)
        addMoneyBtn.layer.cornerRadius = 4
        
        addMoneyBtn.titleLabel?.font = UIFont(name: "AvenirNext-DemiBold", size: 10)
        addMoneyBtn.backgroundColor = UIColor(named: "forgetColor")
        
        
        //LedgerBalance
        ledgerBalanceUIView.translatesAutoresizingMaskIntoConstraints = false
        ledgerBalanceUIView.layer.borderColor = UIColor.white.cgColor
        ledgerBalanceUIView.layer.borderWidth = 0.5
        
        
        ledgerBalanceStackView.translatesAutoresizingMaskIntoConstraints = false
        
        //LedgerStackView
        ledgerStackView.translatesAutoresizingMaskIntoConstraints = false
        ledgerStackView.axis = .vertical
        ledgerStackView.spacing = 2
        ledgerStackView.distribution = .equalCentering
        
        //LedgerLabel
        ledgerLabel.translatesAutoresizingMaskIntoConstraints = false
        ledgerLabel.font = .preferredFont(forTextStyle: .footnote)
        ledgerLabel.text = "Ledger balance:"
        
        ledgerAmountLabel.translatesAutoresizingMaskIntoConstraints = false
        ledgerAmountLabel.text = "N0.00"
        ledgerAmountLabel.font = .preferredFont(forTextStyle: .caption1)
        
        hideBalanceStackView.translatesAutoresizingMaskIntoConstraints = false
        hideBalanceStackView.axis = .horizontal
        hideBalanceStackView.spacing = 8
        hideBalanceStackView.distribution = .equalCentering
        
        hideBalanceSwitch.translatesAutoresizingMaskIntoConstraints = false
        hideBalanceSwitch.setOn(false, animated: true)
        hideBalanceSwitch.onTintColor = .white

        hideBalanceSwitch.thumbTintColor = #colorLiteral(red: 0.7960000038, green: 0.6200000048, blue: 0.2310000062, alpha: 1)
        hideBalanceSwitch.addTarget(self, action: #selector(updateSwitch), for: .valueChanged)
        
        hideBalanceLabel.translatesAutoresizingMaskIntoConstraints = false
        hideBalanceLabel.text = "Hide balance"
        hideBalanceLabel.font = .preferredFont(forTextStyle: .footnote)
        
        midUIView.translatesAutoresizingMaskIntoConstraints = false
        
        
        midStackView.translatesAutoresizingMaskIntoConstraints = false
        midStackView.axis = .horizontal
        midStackView.spacing = 8
        midStackView.distribution = .fillEqually
        
        
        productUpdateUIView.translatesAutoresizingMaskIntoConstraints = false
        productUpdateUIView.backgroundColor = .systemBlue
        productUpdateUIView.layer.cornerRadius = 10
        giftCardUpdateUIView.translatesAutoresizingMaskIntoConstraints = false
        giftCardUpdateUIView.backgroundColor = .systemGreen
        giftCardUpdateUIView.layer.cornerRadius = 10
        cardlessUIVew.translatesAutoresizingMaskIntoConstraints = false
        cardlessUIVew.backgroundColor = .systemRed
        cardlessUIVew.layer.cornerRadius = 10
        
        
        bodyScrollView.translatesAutoresizingMaskIntoConstraints = false
        bodyScrollView.alwaysBounceVertical = false
        bodyScrollView.isDirectionalLockEnabled = true
        bodyScrollView.bounces = false
        bodyScrollView.showsHorizontalScrollIndicator = false
        bodyScrollView.showsVerticalScrollIndicator = false
        contentUIView.translatesAutoresizingMaskIntoConstraints = false
        bodyScrollView.backgroundColor = UIColor(named: "backgroundColor")
        
        
        //Quick Access
        quickAccessUIView.translatesAutoresizingMaskIntoConstraints = false
        quickAccessLabel.translatesAutoresizingMaskIntoConstraints = false
        quickAccessLabel.text = "Quick Access"
        quickAccessLabel.font = .preferredFont(forTextStyle: .subheadline)
        
        quickAccessMainStackView.translatesAutoresizingMaskIntoConstraints = false
        quickAccessMainStackView.axis = .vertical
        quickAccessMainStackView.spacing = 0
        quickAccessMainStackView.distribution = .fillEqually
        
        quickAccessStackView.translatesAutoresizingMaskIntoConstraints = false
        quickAccessStackView.axis = .horizontal
        quickAccessStackView.spacing = 8
        quickAccessStackView.distribution = .fillEqually
        
        transferUIView.translatesAutoresizingMaskIntoConstraints = false
        transferUIView = HomeUIView(withTitle: "Transfer", imageTitle: "arrow.right.arrow.left",frame: CGRect(origin: .zero, size: .zero))
        
        topUIView.translatesAutoresizingMaskIntoConstraints = false
        topUIView = HomeUIView(withTitle: "Top up", imageTitle: "note.text.badge.plus",frame: CGRect(origin: .zero, size: .zero))
        
        payBillUIView.translatesAutoresizingMaskIntoConstraints = false
        payBillUIView = HomeUIView(withTitle: "Pay Bill", imageTitle: "doc.plaintext.fill",frame: CGRect(origin: .zero, size: .zero))
        payBillUIView.clipsToBounds = true
        
        savingsUIView.translatesAutoresizingMaskIntoConstraints = false
        savingsUIView = HomeUIView(withTitle: "Savings", imageTitle: "banknote.fill",frame: CGRect(origin: .zero, size: .zero))
        
        
        //let exploreUIView = UIView()
        exploreUIView.translatesAutoresizingMaskIntoConstraints = false
        
        exploreMainStackView.translatesAutoresizingMaskIntoConstraints = false
        exploreMainStackView.axis = .vertical
        exploreMainStackView.spacing = 0
        exploreMainStackView.distribution = .fill
        
        exploreLabel.translatesAutoresizingMaskIntoConstraints = false
        exploreLabel.text = "Explore Mintyn"
        exploreLabel.font = .preferredFont(forTextStyle: .subheadline)
        
        exploreStackView.translatesAutoresizingMaskIntoConstraints = false
        exploreStackView.axis = .horizontal
        exploreStackView.spacing = 8
        exploreStackView.distribution = .fillEqually
        
        
        
        investmentUIView.translatesAutoresizingMaskIntoConstraints = false
        investmentUIView = ExploreUIView(withTitle: "Investment", imageTitle: "chart.line.uptrend.xyaxis", bodyLabel: "Get up-to 18% per annum ROI", frame: CGRect(origin: .zero, size: .zero))
        marketplaceUIView.translatesAutoresizingMaskIntoConstraints = false
        marketplaceUIView = ExploreUIView(withTitle: "Marketplace", imageTitle: "music.note.house.fill", bodyLabel: "Buy household food supplies at cheaper prices", frame: CGRect(origin: .zero, size: .zero))
        
        
    }
    func viewDidAppearStyle() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = addMoneyUIView.bounds
        gradientLayer.cornerRadius = 8
        gradientLayer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        gradientLayer.colors = [UIColor(named: "gradientTop")!.cgColor, UIColor(named: "gradientBottom")!.cgColor]
        addMoneyUIView.layer.insertSublayer(gradientLayer, at: 0)
       
        let ledgerGradientLayer = CAGradientLayer()
        ledgerGradientLayer.frame = addMoneyUIView.bounds
//        ledgerGradientLayer.cornerRadius = 8
//        ledgerGradientLayer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        ledgerGradientLayer.colors = [UIColor(named: "gradientTop")!.cgColor, UIColor(named: "gradientBottom")!.cgColor]
        ledgerBalanceUIView.layer.insertSublayer(ledgerGradientLayer, at: 0)
        
        notificationIcon.layer.masksToBounds = true
        notificationIcon.layer.backgroundColor = UIColor(named: "notificationBackground")?.cgColor
        notificationIcon.layer.cornerRadius = notificationIcon.frame.width/2
    }
    
    func layout() {
        
        headerUIVew.addSubview(notificationIcon)
        view.addSubview(headerUIVew)
        
        profileMinStackView.addArrangedSubview(profileTypeLabel)
        profileMinStackView.addArrangedSubview(profileAccNumberLabel)
        profileMinStackView.addArrangedSubview(profileLevelLabel)
        
        profileNameStackView.addArrangedSubview(profileNameLabel)
        profileNameStackView.addArrangedSubview(profileMinStackView)
        
        profileSubStackView.addArrangedSubview(profileImageView)
        profileNameUIView.addSubview(profileNameStackView)
        profileSubStackView.addArrangedSubview(profileNameUIView)
        // profileMainStackView.addArrangedSubview(profileImageView)
        profileMainStackView.addArrangedSubview(profileSubStackView)
        
        switchStackView.addArrangedSubview(switchAccountLabel)
        switchStackView.addArrangedSubview(switchImageView)
        switchUIView.addSubview(switchStackView)
        profileMainStackView.addArrangedSubview(switchUIView)
        
        profileUIView.addSubview(profileMainStackView)
        contentUIView.addSubview(profileUIView)
        

        addMoneyStackView.addArrangedSubview(balanceLabel)
        addMoneyStackView.addArrangedSubview(addMoneyBtn)
        addMoneyUIView.addSubview(addMoneyStackView)
        contentUIView.addSubview(addMoneyUIView)
        
        ledgerStackView.addArrangedSubview(ledgerLabel)
        ledgerStackView.addArrangedSubview(ledgerAmountLabel)
        
        hideBalanceStackView.addArrangedSubview(hideBalanceSwitch)
        hideBalanceStackView.addArrangedSubview(hideBalanceLabel)
        
        ledgerBalanceUIView.addSubview(hideBalanceStackView)
        ledgerBalanceUIView.addSubview(ledgerStackView)
        
        contentUIView.addSubview(ledgerBalanceUIView)
        
        midStackView.addArrangedSubview(productUpdateUIView)
        midStackView.addArrangedSubview(giftCardUpdateUIView)
        midStackView.addArrangedSubview(cardlessUIVew)
        midUIView.addSubview(midStackView)
        contentUIView.addSubview(midUIView)
        
        //Quick Access
        quickAccessUIView.addSubview(quickAccessLabel)
        quickAccessStackView.addArrangedSubview(transferUIView)
        quickAccessStackView.addArrangedSubview(topUIView)
        quickAccessStackView.addArrangedSubview(payBillUIView)
        quickAccessStackView.addArrangedSubview(savingsUIView)
        quickAccessMainStackView.addArrangedSubview(quickAccessLabel)
        quickAccessMainStackView.addArrangedSubview(quickAccessStackView)
        quickAccessUIView.addSubview(quickAccessMainStackView)
        contentUIView.addSubview(quickAccessUIView)
        
        //ExploreUIView
        exploreStackView.addArrangedSubview(investmentUIView)
        exploreStackView.addArrangedSubview(marketplaceUIView)
        exploreMainStackView.addArrangedSubview(exploreLabel)
        exploreMainStackView.addArrangedSubview(exploreStackView)
        
        exploreUIView.addSubview(exploreMainStackView)
        contentUIView.addSubview(exploreUIView)
        
        bodyScrollView.addSubview(contentUIView)
        view.addSubview(bodyScrollView)
        
        //HeaderUIView
        NSLayoutConstraint.activate([
            headerUIVew.topAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.topAnchor, multiplier: 1),
            headerUIVew.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 0),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: headerUIVew.trailingAnchor, multiplier: 0),
            headerUIVew.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.07),
            
            notificationIcon.topAnchor.constraint(equalToSystemSpacingBelow: headerUIVew.topAnchor, multiplier: 2),
            headerUIVew.trailingAnchor.constraint(equalToSystemSpacingAfter: notificationIcon.trailingAnchor, multiplier: 2),
            notificationIcon.heightAnchor.constraint(equalTo: headerUIVew.heightAnchor, multiplier: 0.6),
            notificationIcon.widthAnchor.constraint(equalTo: notificationIcon.heightAnchor)
            
        ])
        
        //ScrollView
        NSLayoutConstraint.activate([
            
            bodyScrollView.topAnchor.constraint(equalToSystemSpacingBelow: headerUIVew.bottomAnchor, multiplier: 1),
            bodyScrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bodyScrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            
            bodyScrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
            
            
        ])
        
        //ContentView
        NSLayoutConstraint.activate([
            contentUIView.topAnchor.constraint(equalToSystemSpacingBelow: bodyScrollView.contentLayoutGuide.topAnchor, multiplier: 1),
            contentUIView.leadingAnchor.constraint(equalToSystemSpacingAfter: bodyScrollView.contentLayoutGuide.leadingAnchor, multiplier: 0),
            bodyScrollView.contentLayoutGuide.trailingAnchor.constraint(equalToSystemSpacingAfter: contentUIView.trailingAnchor, multiplier: 0),
            bodyScrollView.contentLayoutGuide.bottomAnchor.constraint(equalToSystemSpacingBelow: contentUIView.bottomAnchor, multiplier: 1),
            contentUIView.widthAnchor.constraint(equalTo: view.widthAnchor)
            
        ])

        //ProfileUIView
        NSLayoutConstraint.activate([
            profileUIView.topAnchor.constraint(equalToSystemSpacingBelow: contentUIView.topAnchor, multiplier: 1),
            profileUIView.leadingAnchor.constraint(equalToSystemSpacingAfter: contentUIView.leadingAnchor, multiplier: 2),
            contentUIView.trailingAnchor.constraint(equalToSystemSpacingAfter: profileUIView.trailingAnchor, multiplier: 2),
            profileUIView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.07),
            
            profileMainStackView.topAnchor.constraint(equalTo: profileUIView.topAnchor),
            profileMainStackView.leadingAnchor.constraint(equalTo: profileUIView.leadingAnchor),
            profileMainStackView.trailingAnchor.constraint(equalTo: profileUIView.trailingAnchor),
            profileMainStackView.bottomAnchor.constraint(equalTo: profileUIView.bottomAnchor),
            
            
            profileSubStackView.widthAnchor.constraint(equalTo: profileMainStackView.widthAnchor, multiplier: 0.75),
            profileNameUIView.widthAnchor.constraint(equalTo: profileSubStackView.widthAnchor, multiplier: 0.8),
         profileNameStackView.centerYAnchor.constraint(equalTo: profileNameUIView.centerYAnchor),
            profileNameStackView.leadingAnchor.constraint(equalToSystemSpacingAfter: profileNameUIView.leadingAnchor, multiplier: 0),
            profileNameUIView.trailingAnchor.constraint(equalToSystemSpacingAfter: profileNameStackView.trailingAnchor, multiplier: 3),
            
            switchStackView.centerXAnchor.constraint(equalTo: switchUIView.centerXAnchor),
            switchStackView.centerYAnchor.constraint(equalTo: switchUIView.centerYAnchor)
        ])
        
        //AddMoneyUIVew
        NSLayoutConstraint.activate([
            addMoneyUIView.topAnchor.constraint(equalToSystemSpacingBelow: profileUIView.bottomAnchor, multiplier: 1),
            addMoneyUIView.leadingAnchor.constraint(equalToSystemSpacingAfter: contentUIView.leadingAnchor, multiplier: 2),
            contentUIView.trailingAnchor.constraint(equalToSystemSpacingAfter: addMoneyUIView.trailingAnchor, multiplier: 2),
            addMoneyUIView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1),
            addMoneyStackView.leadingAnchor.constraint(equalToSystemSpacingAfter: addMoneyUIView.leadingAnchor, multiplier: 2),
            addMoneyUIView.trailingAnchor.constraint(equalToSystemSpacingAfter: addMoneyStackView.trailingAnchor, multiplier: 2),
            addMoneyStackView.centerYAnchor.constraint(equalTo: addMoneyUIView.centerYAnchor),
            addMoneyBtn.heightAnchor.constraint(equalTo: addMoneyStackView.widthAnchor,multiplier: 0.1),
            addMoneyBtn.widthAnchor.constraint(equalTo: addMoneyStackView.widthAnchor, multiplier: 0.3)
        ])
        
        //LedgerBalance
        NSLayoutConstraint.activate([
            ledgerBalanceUIView.topAnchor.constraint(equalToSystemSpacingBelow: addMoneyUIView.bottomAnchor, multiplier: 0),
            ledgerBalanceUIView.leadingAnchor.constraint(equalToSystemSpacingAfter: contentUIView.leadingAnchor, multiplier: 2),
            contentUIView.trailingAnchor.constraint(equalToSystemSpacingAfter: ledgerBalanceUIView.trailingAnchor, multiplier: 2),
            ledgerBalanceUIView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1),
            
            ledgerStackView.leadingAnchor.constraint(equalToSystemSpacingAfter: ledgerBalanceUIView.leadingAnchor, multiplier: 2),
            ledgerStackView.centerYAnchor.constraint(equalTo: ledgerBalanceUIView.centerYAnchor),
            
            hideBalanceStackView.centerYAnchor.constraint(equalTo: ledgerBalanceUIView.centerYAnchor),
            ledgerBalanceUIView.trailingAnchor.constraint(equalToSystemSpacingAfter: hideBalanceStackView.trailingAnchor, multiplier: 2),
        ])
        
        //MidUIView
        let bottomConstraint = midStackView.bottomAnchor.constraint(equalTo: midUIView.bottomAnchor)
        bottomConstraint.priority = .defaultLow
        bottomConstraint.isActive = true
        NSLayoutConstraint.activate([
            midUIView.topAnchor.constraint(equalToSystemSpacingBelow: ledgerBalanceUIView.bottomAnchor, multiplier: 1),
            midUIView.leadingAnchor.constraint(equalToSystemSpacingAfter: contentUIView.leadingAnchor, multiplier: 2),
            contentUIView.trailingAnchor.constraint(equalToSystemSpacingAfter: midUIView.trailingAnchor, multiplier: 2),
            midUIView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.14),
            
            midStackView.topAnchor.constraint(equalTo: midUIView.topAnchor),
            // midStackView.leadingAnchor.constraint(equalTo: midUIView.leadingAnchor),
            midStackView.centerXAnchor.constraint(equalTo: midUIView.centerXAnchor),
            
            productUpdateUIView.widthAnchor.constraint(equalTo: midUIView.heightAnchor,multiplier: 0.95),
            productUpdateUIView.heightAnchor.constraint(equalTo: productUpdateUIView.widthAnchor,multiplier: 1.1),
            giftCardUpdateUIView.heightAnchor.constraint(equalTo: productUpdateUIView.heightAnchor),
            giftCardUpdateUIView.widthAnchor.constraint(equalTo: productUpdateUIView.widthAnchor),
            cardlessUIVew.heightAnchor.constraint(equalTo: productUpdateUIView.heightAnchor),
            cardlessUIVew.widthAnchor.constraint(equalTo: productUpdateUIView.widthAnchor),
        ])
        
        //QuickAccess
        NSLayoutConstraint.activate([
            quickAccessUIView.topAnchor.constraint(equalToSystemSpacingBelow: midUIView.bottomAnchor, multiplier: 1),
            quickAccessUIView.leadingAnchor.constraint(equalToSystemSpacingAfter: contentUIView.leadingAnchor, multiplier: 2),
            contentUIView.trailingAnchor.constraint(equalToSystemSpacingAfter: quickAccessUIView.trailingAnchor, multiplier: 2),
            quickAccessUIView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.2),
            
            quickAccessMainStackView.topAnchor.constraint(equalTo: quickAccessUIView.topAnchor),
            //     quickAccessMainStackView.leadingAnchor.constraint(equalTo: quickAccessUIView.leadingAnchor),
            quickAccessMainStackView.trailingAnchor.constraint(equalTo: quickAccessUIView.trailingAnchor),
            quickAccessMainStackView.bottomAnchor.constraint(equalTo: quickAccessUIView.bottomAnchor),
            
            //            quickAccessLabel.topAnchor.constraint(equalTo: quickAccessUIView.topAnchor),
            quickAccessLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: quickAccessUIView.leadingAnchor, multiplier: 1),
        ])
        
        //Explore Mintyn
        NSLayoutConstraint.activate([
            exploreUIView.topAnchor.constraint(equalToSystemSpacingBelow: quickAccessUIView.bottomAnchor, multiplier: 1),
            exploreUIView.leadingAnchor.constraint(equalToSystemSpacingAfter: contentUIView.leadingAnchor, multiplier: 2),
            contentUIView.trailingAnchor.constraint(equalToSystemSpacingAfter: exploreUIView.trailingAnchor, multiplier: 2),
            exploreUIView.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            
            exploreMainStackView.topAnchor.constraint(equalTo: exploreUIView.topAnchor),
            //     quickAccessMainStackView.leadingAnchor.constraint(equalTo: quickAccessUIView.leadingAnchor),
            exploreMainStackView.trailingAnchor.constraint(equalTo: exploreUIView.trailingAnchor),
            exploreMainStackView.bottomAnchor.constraint(equalTo: exploreUIView.bottomAnchor),
            
            //            quickAccessLabel.topAnchor.constraint(equalTo: quickAccessUIView.topAnchor),
            exploreLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: exploreUIView.leadingAnchor, multiplier: 1),
            contentUIView.bottomAnchor.constraint(equalToSystemSpacingBelow: exploreUIView.bottomAnchor, multiplier: 4)
        ])
    }
}

//MARK: - ACTIONS
extension HomeViewController{
    
    @objc func updateSwitch(){
        balanceLabel.text = hideBalanceSwitch.isOn ? "xxxxx" : "N1.00"
        ledgerAmountLabel.text = hideBalanceSwitch.isOn ? "xxxxx" : "N4.00"
        
    }
    
}

