//
//  DashboardViewController.swift
//  MintynBank test
//
//  Created by Babatunde Oladotun on 24/11/2022.
//

import UIKit

class DashboardViewController: UITabBarController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
}

extension DashboardViewController {
    func style() {
        view.backgroundColor = .lightGray // ! dont forget
        let homeVc = HomeViewController()
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let settingsVc = storyBoard.instantiateViewController(withIdentifier: "SettingsViewController") as! SettingsViewController
        
        homeVc.setTabBarImage(imageName: "house.fill", title: "Home")
        settingsVc.setTabBarImage(imageName: "gearshape.fill", title: "Settings")
       

        let homeNC = UINavigationController(rootViewController: homeVc)
        let settingsNC = UINavigationController(rootViewController: settingsVc)

        let tabBarList = [homeNC,settingsNC]

        viewControllers = tabBarList
        
        self.setViewControllers([homeVc,settingsVc], animated: false)
       
    }
    
    func layout() {
        
    }
}
