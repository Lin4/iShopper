//
//  ViewController.swift
//  iShopper
//
//  Created by Lingeswaran Kandasamy on 12/19/17.
//  Copyright © 2017 Lingeswaran Kandasamy. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wagesTXT: CurrencyTextField!
    @IBOutlet weak var itemPriceTXT: CurrencyTextField!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9407061934, green: 0.6205770969, blue: 0.1357555985, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wagesTXT.inputAccessoryView = calcBtn
        itemPriceTXT.inputAccessoryView = calcBtn
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }
    
    @IBAction func clearCalcTapped(_ sender: Any) {
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wagesTXT.text = ""
        itemPriceTXT.text = ""
    }
    
    @objc func calculate() {
        if let wageTxt = wagesTXT.text, let itemPriceTXT = itemPriceTXT.text {
            if let wage = Double(wageTxt), let price = Double(itemPriceTXT) {
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }
}

