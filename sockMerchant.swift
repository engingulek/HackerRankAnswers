//
//  sockMerchant.swift
//
//
//  Created by Engin Gülek on 17.10.2024.
//

import Foundation

func sockMerchant(n: Int, ar: [Int]) -> Int {
    let resultSet: Set = Set(ar)
    var divide = 0
    for i in resultSet {
    let filterResult = ar.filter({$0 == i})
       divide += filterResult.count / 2
}
return divide
}
