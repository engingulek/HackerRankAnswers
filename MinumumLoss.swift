//
//  MinumumLoss.swift
//
//
//  Created by Engin Gülek on 17.10.2024.
//

import Foundation
// This answer given errors on Test Case 11,12,13,14,15. I think  it takes a long time to work. I try to do not use shortcut( example -> enumareted and sorted) when I solve the quetions
func minimumLoss(price: [Int]) -> Int {
    
    var count = price.count - 1
    var counter = 0
    var lenght = (count * (count + 1)) / 2
    var a = 0
    var b = 1
    var c = 1
    var item = 0
    var list:[Int] = []
    
    while lenght >= 1 {
        let result = price[a] - price[b]
        
        list.append(result)
        
        if item == count - 1 {
            item = 0
            count -= 1
            a += 1
            c += 1
            b = c
        }else{
            item += 1
            b += 1
        }
        lenght -= 1
    }
    return list.filter({$0 > 0}).min()!
}
