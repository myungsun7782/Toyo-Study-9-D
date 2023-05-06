//
//  main.swift
//  WEEK02
//
//  Created by MARY on 2023/04/29.
//

let yagomProductsList: [Product] = [.ballPointPen, .tumbler, .diary, .ecoBag, .mug, .hoodie]
let yagomKorea = Shop(name: "yagomKorea", productsList: yagomProductsList)
let yagomJapan = Shop(name: "yagomJapan", productsList: yagomProductsList)
let mary = Camper(name: "mary", budget: 12000)

yagomKorea.showProducts()
mary.buy(productNumber: 7, at: yagomKorea)
yagomKorea.checkSalesRevenue()
mary.checkBudget()

yagomJapan.showProducts()
mary.buy(productNumber: 3, at: yagomJapan)
yagomJapan.checkSalesRevenue()
mary.checkBudget()

yagomJapan.showProducts()
mary.buy(productNumber: 5, at: yagomJapan)
yagomJapan.checkSalesRevenue()
mary.checkBudget()
