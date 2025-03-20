//
//  main.swift
//  BRHSwiftMaster
//
//  Created by 백래훈 on 3/19/25.
//

import Foundation

//MARK: - 필수 문제 1
let essentialQuestionOne = EssentialQuestionOne()
essentialQuestionOne.sum(3, 5)
print(essentialQuestionOne.sum(3, 5))
essentialQuestionOne.calculate(7, 8, closure: essentialQuestionOne.sum)

//MARK: - 필수 문제 2
let essentialQuestionTwo = EssentialQuestionTwo()
print(essentialQuestionTwo.numbers)
print(essentialQuestionTwo.result)
print(essentialQuestionTwo.result2)

let result = essentialQuestionTwo.myMap([1, 2, 3, 4, 5]) { num in
    String(num)
}

print(result)

//MARK: - 필수 문제 3
let essentialQuestionThree = EssentialQuestionThree()
print(essentialQuestionThree.a([1, 2, 3, 4, 5]))
print(essentialQuestionThree.b(["가", "나", "다", "라", "마"]))
print(essentialQuestionThree.c([2, 3, 4, 5, 6]))
print(essentialQuestionThree.b(["나", "다", "라", "마", "바", "사", "아"]))
print(essentialQuestionThree.d([1, 2, 3, 4, 5, 6, 7]))

// ["다", "라", "마", "바", "사", "아", "자"] String 배열은
// Numeric 프로토콜을 준수하지 않기 때문에 아래 코드는 컴파일 에러를 발생하게 됨
// print(essentialQuestionThree.d(["다", "라", "마", "바", "사", "아", "자"]))

// MARK: - 도전 문제 1
let car = Car(brand: "BMW", model: "520i", year: 2025, engine: Engine(engineType: .gasoline, mileAge: 10, horsePower: 350))
car.drive()
car.stop()
car.charge()
car.refuel()

let electricCar = ElectricCar(brand: "Tesla", model: "Model 3", year: 2024, engine: ElectricEngine(engineType: .electric, mileAge: 15, horsePower: 280))

electricCar.drive()
electricCar.stop()
electricCar.charge()
electricCar.refuel()

let hybridCar = HybridCar(brand: "Hyundai", model: "Granduer", year: 2023, engine: HybridEngine(engineType: .gasoline, mileAge: 20, horsePower: 250))

hybridCar.drive()
hybridCar.stop()
hybridCar.charge()
hybridCar.refuel()
hybridCar.switchEngine(to: hybridCar.engine.engineType)
print("---------------------------------------")
hybridCar.switchEngine(to: hybridCar.engine.engineType)
