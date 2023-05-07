//
//  Camper.swift
//  056_토요스터디
//
//  Created by karen on 2023/05/07.
//

class Camper {
    var budget: Int = 2000
    func buyProduct(from shop: Shop) {
        print("<물품 목록>")
        for (index, product) in shop.productsList.enumerated() {
            print("\(index). \(product.description) : \(product.rawValue)원")
        }
        
        print("구매할 물품의 번호를 선택하세요 : ", terminator: "")
        guard let input = readLine(), let productNumber = Int(input) else {
            print("잘못된 입력입니다.")
            return
        }
        
        guard let product = shop.takeProduct(at: productNumber) else {
            print("선택한 물품이 없습니다.")
            return
        }
        
        guard product.rawValue <= budget else {
            print("잔액이 부족합니다.")
            return
        }
        
        budget -= product.rawValue
        print("\(product.description)를 구매하였습니다. 남은 잔액은 \(budget)원입니다.")
    }
}


