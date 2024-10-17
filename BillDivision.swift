//
//  MinumumLoss.swift
//
//
//  Created by Engin Gülek on 17.10.2024.
//

import Foundation

func bonAppetit(bill: [Int], k: Int, b: Int) -> Void {
     var amount = 0
    for i in 0...bill.count - 1 {
        if k != i {
            amount += bill[i]
        }
    }
    
    let bActual = amount / 2
    let result = b - bActual
    
    if bActual <= result || result == 0 {
        print("Bon Appetit")
    }else{
        print(result)
    }

}
