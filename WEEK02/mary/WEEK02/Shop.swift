//
//  Shop.swift
//  WEEK02
//
//  Created by MARY on 2023/05/06.
//

class Shop {
    let name: String
    private var productsList: [Product?]
    private var salesRevenue: Int = 0
    
    init(name: String, productsList: [Product?]) {
        self.name = name
        self.productsList = productsList
    }
    
    func showProducts() {
        print("-------------------")
        for (productNumber, product) in productsList.enumerated() {
            if let product = product {
                print("\(productNumber)번 상품은 \(product)입니다.")
            } else {
                print("\(productNumber)번 상품은 판매가 완료되었습니다.")
            }
        }
        print("-------------------")
    }
    
    func checkSalesRevenue() {
        print("[\(name)] 매출: \(salesRevenue)원")
    }
    
    func checkStock(productNumber: Int) throws -> Product {
        guard isValidProductsNumber(productNumber) else { throw Errors.outOfRange }
        guard let product = productsList[productNumber] else { throw Errors.outOfStock }
        
        return product
    }
    
    func sell(product: Product) {
        if let productNumber = productsList.firstIndex(of: product) {
            productsList[productNumber] = nil
        }
        increaseSalesRevenue(amount: product.price)
    }
    
    private func isValidProductsNumber(_ number: Int) -> Bool {
        if productsList.indices.contains(number) { return true }
        
        return false
    }
    
    private func increaseSalesRevenue(amount: Int) {
        salesRevenue += amount
    }
}
