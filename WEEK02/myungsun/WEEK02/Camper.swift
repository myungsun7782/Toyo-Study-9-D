//
//  Camper.swift
//  WEEK02
//
//  Created by myungsun on 2023/05/06.
//


class Camper {
    private let name: String
    private var budget: Int
    
    init(name: String, budget: Int) {
        self.name = name
        self.budget = budget
    }
    
    func startShopping(in shop: Shop) {
        var isShoppingOn: Bool = true
        
        while isShoppingOn {
            shop.showProducts(to: self)
            print("구매하고 싶은 물품 번호를 입력해주세요 : ", terminator: "")
            guard let product = readLine(),
                  let productNumber = Int(product) else {
                print("숫자를 입력해주세요. \n")
                continue
            }
            
            buy(productNumber, in: shop)
            isShoppingOn = shop.isEverythingSoldOut() || didSpendAllMoney() ? false : true
        }
    }
    
    func getName() -> String {
        return name
    }
    
    private func buy(_ productNumber: Int, in shop: Shop) {
        if !shop.isValidProductNumber(for: productNumber) {
            print("존재하지 않는 상품 번호입니다.\n")
            return
        } else if didSpendAllMoney() {
            print("구매할 돈이 부족합니다.\n")
            return
        } else if shop.isProductSoldOut(productNumber) {
            return
        }
    
        let product = shop.sellProduct(for: productNumber)
        
        decreaseBudget(in: shop)
        shop.showPurchaseCompletedMessage(with: product)
        showRemainingBudget()
    }
    
    private func didSpendAllMoney() -> Bool {
        return budget <= 0 ? true : false
    }
    
    private func decreaseBudget(in shop: Shop) {
        budget -= shop.getProdutPrice()
    }
    
    private func showRemainingBudget() {
        print("남은 예산: \(budget)\n")
    }
    
    func finishShopping(in shop: Shop) {
        let shopName = shop.getShopName()
        print("\(shopName)에서 쇼핑 끝...!\n")
    }
    
    func charge(budget: Int) {
        self.budget = budget
    }
}
