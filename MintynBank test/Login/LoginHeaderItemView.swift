//
//  LoginHeaderItemView.swift
//  MintynBank test
//
//  Created by Babatunde Oladotun on 24/11/2022.
//

import UIKit
class LoginHeaderItemView: UIView{
    
    let mainView = UIView()
    let stackView = UIStackView()
    let title = UILabel()
    let imageView = UIImageView()
    var titleLabel:String = ""
    var imageTitle:String = ""
    var image = UIImage()
    var comingStackView = UIStackView()
    
    
    
     init(withTitle titleLabel:String, image:UIImage,frame:CGRect){
         super.init(frame: frame)
         self.titleLabel = titleLabel
         self.image = image
         
         let configuration = UIImage.SymbolConfiguration(textStyle: .caption2)
         self.image.withConfiguration(configuration).withRenderingMode(.alwaysTemplate)
         
        style()
        layout()
    }

    init(withStack:UIStackView, image:UIImage,frame:CGRect){
         super.init(frame: frame)
         
         self.image = image
        self.comingStackView = withStack
         
         let configuration = UIImage.SymbolConfiguration(textStyle: .subheadline)
        // image = UIImage(systemName: sfImageTitle,withConfiguration: configuration)?.withRenderingMode(.alwaysTemplate)
         self.image.withConfiguration(configuration).withRenderingMode(.alwaysTemplate)
         
        style()
        comingLayout()
    }

    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        style()
        layout()
    }
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor(named: "gradientTop")!.cgColor, UIColor(named: "gradientBottom")!.cgColor]
//        gradientLayer.startPoint = CGPoint(x: startPointX, y: startPointY)
//        gradientLayer.endPoint = CGPoint(x: endPointX, y: endPointY)
        gradientLayer.frame = self.bounds
        gradientLayer.cornerRadius = 15
        self.layer.insertSublayer(gradientLayer, at: 0)

    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var intrinsicContentSize: CGSize{
        return CGSize(width: 200, height: 200)
    }
}
extension LoginHeaderItemView{
    func style(){
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .systemBackground
        layer.cornerRadius = 15
        
        mainView.translatesAutoresizingMaskIntoConstraints = false
        
        title.translatesAutoresizingMaskIntoConstraints = false
        title.text = titleLabel
        title.font = UIFont.preferredFont(forTextStyle: .footnote)
        title.numberOfLines = 2
        
        
       stackView.translatesAutoresizingMaskIntoConstraints = false
       stackView.axis = .horizontal
       stackView.spacing = 4
       stackView.distribution = .fill
        
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        imageView.image = image
        imageView.tintColor = UIColor(named: "forgetColor")
        imageView.contentMode = .scaleAspectFit
        
       comingStackView.translatesAutoresizingMaskIntoConstraints = false
       comingStackView.axis = .vertical
       comingStackView.spacing = 4
       comingStackView.distribution = .fillEqually
    }
    func layout(){
        
        
        
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(title)
        mainView.addSubview(stackView)
        addSubview(mainView)
        
       
        //BusinessStackView
        NSLayoutConstraint.activate([
            mainView.topAnchor.constraint(equalTo: topAnchor),
            mainView.bottomAnchor.constraint(equalTo: bottomAnchor),
            mainView.leadingAnchor.constraint(equalTo: leadingAnchor),
            mainView.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            stackView.centerXAnchor.constraint(equalTo: mainView.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: mainView.centerYAnchor),
            stackView.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.7),
            
            title.widthAnchor.constraint(equalTo: stackView.widthAnchor, multiplier: 0.7)
        ])
        
    }
    
    func comingLayout(){
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(comingStackView)
        mainView.addSubview(stackView)
        addSubview(mainView)
        
       
        //BusinessStackView
        NSLayoutConstraint.activate([
           mainView.topAnchor.constraint(equalTo: topAnchor),
           mainView.bottomAnchor.constraint(equalTo: bottomAnchor),
           mainView.leadingAnchor.constraint(equalTo: leadingAnchor),
           mainView.trailingAnchor.constraint(equalTo: trailingAnchor),
           
           stackView.centerXAnchor.constraint(equalTo: mainView.centerXAnchor),
           stackView.centerYAnchor.constraint(equalTo: mainView.centerYAnchor),
           stackView.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.7),
            
            comingStackView.widthAnchor.constraint(equalTo: stackView.widthAnchor, multiplier: 0.7)
        ])
        
    }
}
extension LoginHeaderItemView:LoginViewDelegate{
    func didLogin() {
        print("from the LoginHeader")
    }
    
    
}

