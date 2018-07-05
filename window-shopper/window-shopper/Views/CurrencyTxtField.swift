//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Gurpreet Bhoot on 6/28/18.
//  Copyright © 2018 Gurpal Bhoot. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTxtField: UITextField {

    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y:  (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.6049185739)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        textAlignment = .center
        layer.cornerRadius = 5.0
        clipsToBounds = true
        
//        let numFormat = NumberFormatter()
//        numFormat.maximumFractionDigits = 2
//        numFormat.maximumFractionDigits = 2
//        numFormat.usesGroupingSeparator = true
//        numFormat.numberStyle = .currency
//        numFormat.locale = .current
//        let amount = NSAttributedString(string: <#T##String#>)
//        attributed
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: UIColor.white])
            attributedPlaceholder = place
        }
    }

}
