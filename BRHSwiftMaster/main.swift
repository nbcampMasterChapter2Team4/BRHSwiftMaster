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
print(essentialQuestionTwo.stringResult)
print(essentialQuestionTwo.result2)

let result = essentialQuestionTwo.myMap([1, 2, 3, 4, 5]) { num in
    String(num)
}
let result2 = essentialQuestionTwo.myMap2([3, 4, 5, 6, 7], closure: String.init)

print(result)
print(result2)

//MARK: - 필수 문제 3
let essentialQuestionThree = EssentialQuestionThree()
print(essentialQuestionThree.a([1, 2, 3, 4, 5]))
print(essentialQuestionThree.aa([3, 4, 5, 6, 7]))
print(essentialQuestionThree.b(["가", "나", "다", "라", "마"]))
print(essentialQuestionThree.bb(["다", "라", "마", "바", "사"]))
print(essentialQuestionThree.c([2, 3, 4, 5, 6]))
print(essentialQuestionThree.cc([2, 3, 4, 5, 6]))
print(essentialQuestionThree.cc([true, false, true, false, true]))
print(essentialQuestionThree.b(["나", "다", "라", "마", "바", "사", "아"]))
print(essentialQuestionThree.d([1, 2, 3, 4, 5, 6, 7]))
print(essentialQuestionThree.dd([1, 2, 3, 4, 5, 6, 7, 8, 9]))

// ["다", "라", "마", "바", "사", "아", "자"] String 배열은
// Numeric 프로토콜을 준수하지 않기 때문에 아래 코드는 컴파일 에러를 발생하게 됨
// print(essentialQuestionThree.d(["다", "라", "마", "바", "사", "아", "자"]))

// MARK: - 도전 문제 1
let car = Car(brand: "BMW", model: "520i", year: 2025, engine: Engine(mainEngineType: .gasoline, electricMotor: false, mileAge: 10, horsePower: 350))
car.drive()
car.stop()
car.charge()
car.refuel()
print("---------------------------------------")

let electricCar = ElectricCar(brand: "Tesla", model: "Model 3", year: 2024, engine: ElectricEngine(mainEngineType: .electric, electricMotor: false, mileAge: 15, horsePower: 280))

electricCar.drive()
electricCar.stop()
electricCar.charge()
electricCar.refuel()
print("---------------------------------------")

let hybridCar = HybridCar(brand: "Hyundai", model: "Granduer", year: 2023, engine: HybridEngine(mainEngineType: .gasoline, electricMotor: true, mileAge: 20, horsePower: 250))

hybridCar.drive()
hybridCar.stop()
hybridCar.charge()
hybridCar.refuel()
hybridCar.switchEngine(to: hybridCar.engine.mainEngineType)
hybridCar.switchEngine(to: hybridCar.engine.mainEngineType)
print("---------------------------------------")

let car2 = Car2(brand: "Toyota", model: "Camry", year: 2020, engine: Engine(mainEngineType: .gasoline, electricMotor: false, mileAge: 17, horsePower: 220))
car2.drive()
car2.stop()
car2.refuel()
print("---------------------------------------")

let electricCar2 = ElectricCar2(brand: "Porsche", model: "Taykan", year: 2022, engine: ElectricEngine(mainEngineType: .electric, electricMotor: false, mileAge: 12, horsePower: 400))

electricCar2.drive()
electricCar2.stop()
electricCar2.charge()
print("---------------------------------------")

let hybridCar2 = HybridCar2(brand: "Lexus", model: "es300h", year: 2026, engine: HybridEngine(mainEngineType: .gasoline, electricMotor: true, mileAge: 22, horsePower: 300))

hybridCar2.drive()
hybridCar2.stop()
hybridCar2.refuel()
hybridCar2.charge()
hybridCar2.switchEngine(to: hybridCar2.engine.mainEngineType)
print(hybridCar2.engine.mainEngineType)
print("---------------------------------------")
