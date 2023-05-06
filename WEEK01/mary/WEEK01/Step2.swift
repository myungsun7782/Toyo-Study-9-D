//
//  Step2.swift
//  ToyoStudyWeek1
//
//  Created by MARY on 2023/05/06.
//

func step2() {
    enum Errors: Error {
        case outOfRange
        case outOfStock
        case outOfBudget
    }
    
    var budget: Int = 2000
    var productsList: [String?] = ["볼펜", "텀블러", "다이어리", "에코백", "머그컵", "후드집업"]
    
    checkStock()
    print("구매할 상품 번호를 입력해주세요 : ", terminator: "")
    let choosedNumber = readLine()
    
    if let choosedNumber,
       let choosedNumber = Int(choosedNumber) {
        do {
            try buy(productNumber: choosedNumber)
        } catch {
            print(error)
        }
    }
    print(productsList.map { $0 ?? "nil" })
    
    func buy(productNumber: Int) throws {
        guard 0...productsList.count-1 ~= productNumber
        else { throw Errors.outOfRange }
        guard budget >= 1000
        else { throw Errors.outOfBudget }
        guard let product = productsList[productNumber]
        else { throw Errors.outOfStock }
        
        budget -= 1000
        productsList[productNumber] = nil
        print("\(product) 구매가 완료되었습니다.")
    }
    
    func checkStock() {
        for (index, element) in productsList.enumerated() {
            guard let element = element else { continue }
            print("\(index)번 상품은 \(element)입니다.")
        }
    }
}
