//
//  main.swift
//  WEEK2
//
//  Created by kangkyungmin on 2023/05/06.
//
let shop1 = Shop(productsList: ["볼펜", "텀블러", "다이어리", "에코백", "머그컵", "후드집업"])
let shop2 = Shop(productsList: ["볼펜", "텀블러", "다이어리", "에코백", "머그컵", "후드집업"])

let camper = Camper(budget: 2000)

camper.buy(productNumber: 1, shop: shop2)
camper.buy(productNumber: 1, shop: shop2)
camper.buy(productNumber: 1, shop: shop1)
camper.buy(productNumber: 3, shop: shop2)

