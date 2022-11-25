//
//  GradientUIView.swift
//  MintynBank test
//
//  Created by Babatunde Oladotun on 23/11/2022.
//
import UIKit
class GradinentUIView: UIView{
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
}
extension GradinentUIView{
    func style(){
        translatesAutoresizingMaskIntoConstraints = false
    }
    func layout(){
        
    }
}
