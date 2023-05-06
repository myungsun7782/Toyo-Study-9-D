//
//  main.swift
//  WEEK1
//
//  Created by kangkyungmin on 2023/05/06.
//

var budjet: Int = 2000
var productsList: [String?] = ["볼펜", "텀블러", "다이어리", "에코백", "머그컵", "후드집업"]

func buy(productNumber: Int) {

    guard checkUserInputNumber(with: productNumber),
          checkBudjetMoney(),
          checkSoldOut(with: productNumber) else {
        return
    }

    purchaseItem(with: productNumber)
    removeProductPrice()
    return
}

func checkUserInputNumber(with productNumber: Int) -> Bool {
    guard productsList.indices.contains(productNumber) else {
        print("\(productNumber)번 상품은 존재하지 않습니다.")
        return false
    }
    return true
}

func checkBudjetMoney() -> Bool {
    guard budjet >= 1000 else {
        print("예산이 부족합니다.")
        return false
    }
    return true
}

func checkSoldOut(with productNumber: Int) -> Bool {
    guard productsList[productNumber] != nil else {
        print("\(productNumber)번 상품은 품절 됐습니다.")
        return false
    }
    return true
}

func purchaseItem(with productNumber: Int) {
    print("\(productNumber)번 상품을 구매하였습니다.")
    productsList[productNumber] = nil
}

func removeProductPrice() {
    budjet -= 1000
}

buy(productNumber: 9)
buy(productNumber: 2)
buy(productNumber: 2)
buy(productNumber: 1)
buy(productNumber: 3)
