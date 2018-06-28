//
//  Wage.swift
//  window-shopper
//
//  Created by Gurpreet Bhoot on 6/28/18.
//  Copyright © 2018 Gurpal Bhoot. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
