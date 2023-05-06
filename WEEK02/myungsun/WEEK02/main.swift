//
//  main.swift
//  WEEK02
//
//  Created by myungsun on 2023/05/06.
//

let eMart: Shop = Shop(name: "eMart")
let lotteMart: Shop = Shop(name: "lotteMart")
let myungsun: Camper = Camper(name: "myungsun", budget: 5000)

eMart.showMenu(to: myungsun)
myungsun.charge(budget: 5000) // 충전 하는 기능 추가하면 좋을듯
lotteMart.showMenu(to: myungsun)
