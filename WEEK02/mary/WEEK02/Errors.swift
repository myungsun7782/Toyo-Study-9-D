//
//  Errors.swift
//  WEEK02
//
//  Created by MARY on 2023/05/06.
//

enum Errors: Error, CustomStringConvertible {
    case outOfRange
    case outOfStock
    case outOfBudget
    case unknown
    
    var description: String {
        switch self {
        case .outOfRange:
            return "해당 상품이 없어 구매에 실패했습니다."
        case .outOfStock:
            return "재고가 없어 구매에 실패했습니다."
        case .outOfBudget:
            return "예산이 부족하여 구매에 실패했습니다."
        case .unknown:
            return "알 수 없는 오류입니다."
        }
    }
}
