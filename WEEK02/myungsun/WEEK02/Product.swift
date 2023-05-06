//
//  Product.swift
//  WEEK02
//
//  Created by myungsun on 2023/05/06.
//

enum Product {
    case ballpoint
    case tumbler
    case diary
    case echoBack
    case mugCup
    case hoodie
    
    var description: String {
        switch self {
        case .ballpoint:
            return "볼펜"
        case .tumbler:
            return "텀블러"
        case .diary:
            return "다이어리"
        case .echoBack:
            return "에코백"
        case .mugCup:
            return "머그컵"
        case .hoodie:
            return "후드집업"
        }
    }
}
