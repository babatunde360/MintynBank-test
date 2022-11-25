//
//  HomeUIView.swift
//  MintynBank test
//
//  Created by Babatunde Oladotun on 24/11/2022.
//

import UIKit

class HomeUIView: UIView{
    
    let stackView = UIStackView()
    let title = UILabel()
    let imageView = UIImageView()
    var titleLabel:String = ""
    var imageTitle:String = ""
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        style()
        layout()
    }
    init(withTitle titleLabel:String, imageTitle:String,frame:CGRect){
        super.init(frame: frame)
        self.titleLabel = titleLabel
        self.imageTitle = imageTitle
        
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
        gradientLayer.frame = self.bounds
        gradientLayer.cornerRadius = 10
        gradientLayer.colors = [UIColor(named: "gradientTop")!.cgColor, UIColor(named: "gradientBottom")!.cgColor]
        //addMoneyUIView.layer.addSublayer(gradientLayer)
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}
extension HomeUIView{
    func style(){
        translatesAutoresizingMaskIntoConstraints = false
        
        title.translatesAutoresizingMaskIntoConstraints = false
        title.text = titleLabel
        title.font = UIFont.preferredFont(forTextStyle: .caption1)
        title.numberOfLines = 2


       stackView.translatesAutoresizingMaskIntoConstraints = false
       stackView.axis = .vertical
       stackView.spacing = 4
        stackView.distribution = .fill

        //tempView.layer.cornerRadius = 8
        //tempView.layer.borderWidth = 1
        //tempView.layer.borderColor = UIColor(red: 0.762, green: 0.744, blue: 0.738, alpha: 1).cgColor

        imageView.translatesAutoresizingMaskIntoConstraints = false

        let configuration = UIImage.SymbolConfiguration(textStyle: .title2)
        let image = UIImage(systemName: imageTitle,withConfiguration: configuration)?.withRenderingMode(.alwaysTemplate)
        imageView.image = image
        imageView.tintColor = UIColor(named: "forgetColor")
        imageView.contentMode = .scaleAspectFit


    }
    func layout(){
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(title)
        addSubview(stackView)


        //BusinessStackView
        NSLayoutConstraint.activate([
         //   stackView.centerXAnchor.constraint(equalTo: tempView.centerXAnchor),
    //                stackView.topAnchor.constraint(equalTo: tempView.topAnchor),
    //                stackView.bottomAnchor.constraint(equalTo: tempView.bottomAnchor),
    //                stackView.leadingAnchor.constraint(equalTo: tempView.leadingAnchor),
    //                stackView.trailingAnchor.constraint(equalTo: tempView.trailingAnchor),

            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}
