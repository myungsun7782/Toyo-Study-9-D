//
//  Camper.swift
//  WEEK02
//
//  Created by MARY on 2023/05/06.
//

class Camper {
    let name: String
    private var budget: Int
    
    init(name: String, budget: Int) {
        self.name = name
        self.budget = budget
    }

    func checkBudget() {
        print("[\(name)] 잔고: \(budget)원")
    }
    
    func buy(productNumber: Int, at shop: Shop) {
        do {
            let product = try shop.checkStock(productNumber: productNumber)
            
            try isSufficientBudget(price: product.price)
            shop.sell(product: product)
            decreaseBudget(amount: product.price)
            print("\(product) 구매가 완료되었습니다.")
        } catch {
            print(error)
        }
    }
    
    private func isSufficientBudget(price: Int) throws {
        if budget < price { throw Errors.outOfBudget }
    }
    
    private func decreaseBudget(amount: Int) {
        budget -= amount
    }
}
