//
//  Shop.swift
//  056_토요스터디
//
//  Created by karen on 2023/05/07.
//

class Shop {
    var productsList: [Product] = [.ballPointPen, .tumbler, .diary, .ecoBag, .mug, .hoodie]
    
    func takeProduct(at index: Int) -> Product? {
        guard index >= 0 && index < productsList.count else {
            return nil
        }
        return productsList.remove(at: index)
    }
}
