//
//  LegalViewController.swift
//  MintynBank test
//
//  Created by Babatunde Oladotun on 24/11/2022.
//

import UIKit

class LegalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func icon1(_ sender: Any) {
        let vc = (storyboard?.instantiateViewController(identifier: "Lega1ViewController"))! as Lega1ViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func icon2(_ sender: Any) {
        let vc = (storyboard?.instantiateViewController(identifier: "Legal2ViewController"))! as Legal2ViewController
        navigationController?.pushViewController(vc, animated: false)
    }
    @IBAction func icon3(_ sender: Any) {
        let vc = (storyboard?.instantiateViewController(identifier: "Legal3ViewController"))! as Legal3ViewController
        navigationController?.pushViewController(vc, animated: false)
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        self.performSegue(withIdentifier: "ToLegalOne", sender: self)
         //Get the new view controller using segue.destination.x
        // Pass the selected object to the new view controller.
        
        
    }
    

}
