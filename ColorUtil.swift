//
//  ColorUtil.swift
//  SimpleLayer
//
//  Created by Perry Davies on 28/03/2018.
//  Copyright © 2018 Perry Davies. All rights reserved.
//

import Foundation
import UIKit

func HexColorValue(value:String) -> (red:CGFloat,green:CGFloat,blue:CGFloat) {
    let avalue = value.contains("#") ? subString(value: value, from: 1, to: value.count-1) : value
    
    
    let r_s      = subString(value: avalue, from: 0, to: 1)
    let g_s      = subString(value: avalue, from: 2, to: 3)
    let b_s      = subString(value: avalue, from: 4, to: 5)
    
    // MARK - Convert from base 16 to base 10
    let red    = CGFloat(UInt32(r_s , radix:16)!)
    let green  = CGFloat(UInt32(g_s , radix: 16)!)
    let blue   = CGFloat(UInt32(b_s , radix: 16)!)
    
    let r = round(CGFloat(red) / 255 * 1000) / 1000
    let g = round(CGFloat(green) / 255 * 1000) / 1000
    let b = round(CGFloat(blue) / 255 * 1000) / 1000
    
    return (r,g,b)
}

func subString(value: String, from:Int,to:Int) ->String {
    let to = to - from
    let start = value.index(value.startIndex, offsetBy: from)
    let finish = value.index(start, offsetBy: to)
    return String(value[start...finish])
}
