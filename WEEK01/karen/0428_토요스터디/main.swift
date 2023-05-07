//
//  main.swift
//  0428_토요스터디
//
//  Created by karen on 2023/04/28
//

import Foundation

//guard let을 활용해서 함수 작성
var budget: Int = 2000
var productsList: [String?] = ["볼펜", "텀블러", "다이어리", "에코백", "머그컵", "후드집업"]

//do catch문 활용해서 에러처리하고 싶었지만..아직 확실하게 이해해서 적용을 못해서 적용 못함.
func buy(productNumber: Int) {
    // 예외 처리 (존재하지 않거나 품절된 상품 번호를 입력 했을 때)
    guard productNumber >= 0 && productNumber < productsList.count else {
        print("존재하지 않는 상품번호입니다.")
        return
    }
    
    guard let product = productsList[productNumber] else {
        print("이미 품절된 상품입니다.")
        return
    }
    
    // 예산 초과 처리
    let totalPrice = 1000
    guard budget >= totalPrice else {
        print("예산이 부족합니다.")
        return
    }
    
    // 상품 구매 처리
    productsList[productNumber] = nil
    budget -= totalPrice //돈 차감
    print("\(product) 상품을 구매했습니다. 남은 예산은 \(budget)원 입니다.")
}

buy(productNumber: 8)
