//
//  main.swift
//  WEEK1
//
//  Created by myungsun on 2023/04/29.
//

func showMenu() {
    let startOption: String = "1"
    let endOption: String = "2"
    var isMenuChoiceOn: Bool = true
    
    while isMenuChoiceOn {
        print("1. 쇼핑 시작 \n2. 쇼핑 종료")
        print("원하시는 기능을 선택해주세요 : ", terminator: "")
        guard let menuOption = readLine() else { continue }
            
        switch menuOption {
        case startOption:
            startShopping()
        case endOption:
            isMenuChoiceOn = false
        default:
            print("입력이 잘못되었습니다.")
            continue
        }
    }
}

func startShopping() {
    var isShoppingOn: Bool = true
    while isShoppingOn {
        showProducts()
        print("구매하고 싶은 물품 번호를 입력해주세요 : ", terminator: "")
        guard let product = readLine(),
              let productNumber = Int(product) else {
            print("숫자를 입력해주세요. \n")
            continue
        }
        buy(productNumber: productNumber)

        isShoppingOn = isEverythingSoldOut() || didSpendAllMoney() ? false : true
    }
    print("쇼핑 끝...!")
    resetShopping()
}

func showProducts() {
    let productsList: [String] = ["볼펜", "텀블러", "다이어리", "에코백", "머그컵", "후드집업"]
    print()
    for (productNumber, product) in productsList.enumerated() {
        print("\(productNumber)번 상품은 '\(product)'입니다.")
    }
}

func buy(productNumber: Int) {
    if !isValidProductNumber(for: productNumber) {
        print("존재하지 않는 상품 번호입니다.\n")
        return
    } else if didSpendAllMoney() {
        print("구매할 돈이 부족합니다.\n")
        return
    }
    
    guard let product = productsList[productNumber] else {
        print("품절된 상품입니다.\n")
        return
    }
    productsList[productNumber] = nil
    decreaseBudget()
    print("'\(product)'이 정상적으로 구매 완료되었습니다.")
    showRemainingBudget()
}

func isValidProductNumber(for number: Int) -> Bool {
    let validProductNumberRange = 0..<productsList.count
    return validProductNumberRange.contains(number) ? true : false
}

func didSpendAllMoney() -> Bool {
    return budget <= 0 ? true : false
}

func decreaseBudget() {
    budget -= productPrice
}

func showRemainingBudget() {
    print("남은 예산: \(budget)\n")
}

func isEverythingSoldOut() -> Bool {
    let soldOutCount: Int = productsList.count
    return productsList.filter { $0 != nil }.count == soldOutCount ? true : false
}

func resetShopping() {
    budget = 2000
    productsList = ["볼펜", "텀블러", "다이어리", "에코백", "머그컵", "후드집업"]
}

var budget: Int = 2000
var productsList: [String?] = ["볼펜", "텀블러", "다이어리", "에코백", "머그컵", "후드집업"]
let productPrice: Int = 1000

showMenu()
