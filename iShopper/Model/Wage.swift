//
//  Wage.swift
//  iShopper
//
//  Created by Lingeswaran Kandasamy on 12/20/17.
//  Copyright © 2017 Lingeswaran Kandasamy. All rights reserved.
//

import Foundation
class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price/wage))
    }
}
