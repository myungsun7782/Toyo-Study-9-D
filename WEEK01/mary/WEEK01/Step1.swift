//
//  Step1.swift
//  ToyoStudyWeek1
//
//  Created by MARY on 2023/05/06.
//

func step1() {
    let productsList: [String?] = ["볼펜", "텀블러", "다이어리", "에코백", "머그컵", "후드집업"]
    
    print("<출력 예시>")
    
    // 1-1 Optional Binding (if let, guard let)
    for (index, element) in productsList.enumerated() {
        if let element = element {
            print("\(index)번 상품은 \(element)입니다.")
        }
    }
    for (index, element) in productsList.enumerated() {
        guard let element = element else { continue }
        print("\(index)번 상품은 \(element)입니다.")
    }
    
    // 1-2 Nil-Coalescing (??)
    for (index, element) in productsList.enumerated() {
        print("\(index)번 상품은 \(element ?? "")입니다.")
    }
    
    
    // 1-3 unconditional unwrapping
    for (index, element) in productsList.enumerated() {
        print("\(index)번 상품은 \(element!)입니다.")
    }
}
