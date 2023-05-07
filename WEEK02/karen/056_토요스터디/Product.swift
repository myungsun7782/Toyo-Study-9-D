//
//  Product.swift
//  056_토요스터디
//
//  Created by karen on 2023/05/07.
//

//23.05.06 건디가 알려주시고 mary가 구현하셨던 사항
enum Product: Int, CustomStringConvertible {
    case ballPointPen = 1000
    case tumbler = 2000
    case diary = 2500
    case ecoBag = 1500
    case mug = 3000
    case hoodie = 5000

    //위에 case에 있는 항목 중 하나라도 누락하면 오류 뜸
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
}
