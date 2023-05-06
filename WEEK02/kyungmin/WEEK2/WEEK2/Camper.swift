//
//  Camper.swift
//  WEEK2
//
//  Created by kangkyungmin on 2023/05/06.
//

class Camper {
    private var budget: Int
    
    init(budget: Int) {
        self.budget = budget
    }
    
    func buy(productNumber: Int, shop: Shop) {
        guard shop.checkProductList(with: productNumber),
              shop.checkSoldOut(with: productNumber),
              self.checkBudgetMoney() else {
            return
        }
        
        shop.purchaseItem(with: productNumber)
        self.removeProductPrice()
    }
    
    private func checkBudgetMoney() -> Bool {
        guard self.budget >= 1000 else {
            print("예산이 부족합니다.")
            return false
        }
        return true
    }
    
    private func removeProductPrice() {
        self.budget -= 1000
    }
}
