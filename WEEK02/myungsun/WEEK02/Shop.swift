//
//  Shop.swift
//  WEEK02
//
//  Created by myungsun on 2023/05/06.
//

class Shop {
    private let products: [Product] = [.ballpoint, .tumbler, .diary, .echoBack, .mugCup, .hoodie]
    private let productPrice: Int = 1000
    private let name: String
    private var productsList: [String?] = ["볼펜", "텀블러", "다이어리", "에코백", "머그컵", "후드집업"]
    
    init(name: String) {
        self.name = name
    }
    
    func showMenu(to camper: Camper) {
        let startOption: String = "1"
        let endOption: String = "2"
        var isMenuChoiceOn: Bool = true
        
        while isMenuChoiceOn {
            guard let menuOption = inputMenuChoice() else { continue }

            switch menuOption {
            case startOption:
                camper.startShopping(in: self)
            case endOption:
                isMenuChoiceOn = false
                camper.finishShopping(in: self)
            default:
                print("입력이 잘못되었습니다.")
                continue
            }
        }
    }
    
    func inputMenuChoice() -> String? {
        print("1. 쇼핑 시작 \n2. 쇼핑 종료")
        print("원하시는 기능을 선택해주세요 : ", terminator: "")
        guard let menuOption = readLine() else { return nil }
        return menuOption
    }
    
    func showProducts(to camper: Camper) {
        print("반갑습니다:) \(camper.getName())님! \(name) 입니다!")
        for (productNumber, product) in products.enumerated() {
            print("\(productNumber)번 상품은 '\(product.description)'입니다.")
        }
    }
    
    func isValidProductNumber(for number: Int) -> Bool {
        if !productsList.indices.contains(number) {
            print("존재하지 않는 상품 번호입니다.\n")
            return false
        }
        
        return true
    }
    
    func showPurchaseCompletedMessage(with product: Product) {
        let purchasedProduct: Product = product
        print("'\(purchasedProduct.description)'이 정상적으로 구매 완료되었습니다.")
    }
    
    func sellProduct(for productNumber: Int) -> Product {
        productsList[productNumber] = nil
        return products[productNumber]
    }
    
    func isEverythingSoldOut() -> Bool {
        let soldOutCount: Int = productsList.count
        
        return productsList.filter { $0 != nil }.count == soldOutCount ? true : false
    }
    
    func isProductSoldOut(_ productNumber: Int) -> Bool {
        if productsList[productNumber] == nil {
            print("\(products[productNumber].description)은 품절된 상품입니다.\n")
            return true
        }
        return false
    }
    
    func getProductsList() -> [String?] {
        return productsList
    }
    
    func getProdutPrice() -> Int {
        return productPrice
    }
    
    func getShopName() -> String {
        return name
    }
}
