//
//  ExploreUIView.swift
//  MintynBank test
//
//  Created by Babatunde Oladotun on 24/11/2022.
//

import UIKit

class ExploreUIView: UIView{
    
    let stackView = UIStackView()
    let title = UILabel()
    let body = UILabel()
    let imageView = UIImageView()
    var titleLabel:String = ""
    var imageTitle:String = ""
    var bodyLabel:String = ""
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        style()
        layout()
    }
    init(withTitle titleLabel:String, imageTitle:String,bodyLabel:String,frame:CGRect){
        super.init(frame: frame)
        self.titleLabel = titleLabel
        self.imageTitle = imageTitle
        self.bodyLabel = bodyLabel
        
       style()
       layout()
   }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var intrinsicContentSize: CGSize{
        return CGSize(width: 200, height: 130)
    }
    
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.bounds
        gradientLayer.cornerRadius = 10
        gradientLayer.colors = [UIColor(named: "gradientTop")!.cgColor, UIColor(named: "gradientBottom")!.cgColor]
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}
extension ExploreUIView{
    func style(){
        translatesAutoresizingMaskIntoConstraints = false
        
        title.translatesAutoresizingMaskIntoConstraints = false
        title.text = titleLabel
        title.font = UIFont.preferredFont(forTextStyle: .callout)


       body.translatesAutoresizingMaskIntoConstraints = false
       body.text = bodyLabel
       body.font = UIFont.preferredFont(forTextStyle: .caption1)
       body.numberOfLines = 2
        body.clipsToBounds = true


       stackView.translatesAutoresizingMaskIntoConstraints = false
       stackView.axis = .vertical
       stackView.spacing = 0
        stackView.distribution = .equalCentering
        stackView.alignment = .leading

        //tempView.layer.cornerRadius = 8
        //tempView.layer.borderWidth = 1
        //tempView.layer.borderColor = UIColor(red: 0.762, green: 0.744, blue: 0.738, alpha: 1).cgColor

        imageView.translatesAutoresizingMaskIntoConstraints = false

        let configuration = UIImage.SymbolConfiguration(textStyle: .largeTitle)
        let image = UIImage(systemName: imageTitle,withConfiguration: configuration)?.withRenderingMode(.alwaysTemplate)
        imageView.image = image
        imageView.tintColor = UIColor(named: "forgetColor")
        imageView.contentMode = .scaleAspectFit


    }
    func layout(){
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(title)
        stackView.addArrangedSubview(body)
        addSubview(stackView)


        //BusinessStackView
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 1),
            stackView.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 1),
            trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 2),
           // bottomAnchor.constraint(equalToSystemSpacingBelow: stackView.bottomAnchor, multiplier: 2)
            stackView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.75)
        ])
    }
}
