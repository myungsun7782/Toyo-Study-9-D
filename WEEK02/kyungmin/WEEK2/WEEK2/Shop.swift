//
//  Shop.swift
//  WEEK2
//
//  Created by kangkyungmin on 2023/05/06.
//

class Shop {
    private var productsList: [String?]
    
    init(productsList: [String?]) {
        self.productsList = productsList
    }
    
    func checkProductList(with productNumber: Int) -> Bool {
        guard self.productsList.indices.contains(productNumber) else {
            print("\(productNumber)번 상품은 존재하지 않습니다.")
            return false
        }
        return true
    }
    
    func checkSoldOut(with productNumber: Int) -> Bool {
        guard self.productsList[productNumber] != nil else {
            print("\(productNumber)번 상품은 품절됐습니다.")
            return false
        }
        return true
    }
    
    func purchaseItem(with productNumber: Int) {
        print("\(productNumber)번 상품을 구매하였습니다.")
        self.productsList[productNumber] = nil
    }
}
