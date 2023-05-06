//
//  Product.swift
//  WEEK02
//
//  Created by MARY on 2023/05/06.
//

enum Product: CustomStringConvertible {
    case ballPointPen
    case tumbler
    case diary
    case ecoBag
    case mug
    case hoodie
    
    var description: String {
        switch self {
        case .ballPointPen:
            return "볼펜"
        case .tumbler:
            return "텀블러"
        case .diary:
            return "다이어리"
        case .ecoBag:
            return "에코백"
        case .mug:
            return "머그컵"
        case .hoodie:
            return "후드집업"
        }
    }
    
    var price: Int {
        switch self {
        case .ballPointPen:
            return 1000
        case .tumbler:
            return 5000
        case .diary:
            return 4000
        case .ecoBag:
            return 10000
        case .mug:
            return 6000
        case .hoodie:
            return 20000
        }
    }
}
