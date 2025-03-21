//
//  ChallengeQuestionOne.swift
//  BRHSwiftMaster
//
//  Created by 백래훈 on 3/20/25.
//

import Foundation

// 여러 엔진의 타입을 가지는 enum 'EngineType' 구현
enum EngineType {
    case gasoline
    case diesel
    case electric
}

// Base 클래스 'Engine' 구현
class Engine {
    // 임의의 4가지 상태 정의
    var mainEngineType: EngineType
    var electricMotor: Bool
    var mileAge: Int
    var horsePower: Int
    
    init(mainEngineType: EngineType, electricMotor: Bool, mileAge: Int, horsePower: Int) {
        self.mainEngineType = mainEngineType
        self.electricMotor = electricMotor
        self.mileAge = mileAge
        self.horsePower = horsePower
    }
}

// Base 클래스 'Car' 구현
class Car {
    // 4가지 상태 정의
    let brand: String
    let model: String
    let year: Int
    let engine: Engine
    
    // 초기화 코드 구현
    init(brand: String, model: String, year: Int, engine: Engine) {
        self.brand = brand
        self.model = model
        self.year = year
        self.engine = engine
    }
    
    // 동작을 담당하는 메서드들
    func drive() {
        print("Car 주행중...")
    }
    
    func stop() {
        print("Car 멈춤!")
    }
    
    func charge() {
        print("Car 충전중...")
    }
    
    func refuel() {
        print("Car 주유중...")
    }
}

// 'Engine' class를 상속받는 'ElectricEngine' class 구현
class ElectricEngine: Engine {
    
}

// 'Car' class를 상속받는  'ElectricCar' class 구현
class ElectricCar: Car {
    
}

// 'Engine' class를 상속받는 'HybridEngine' class 구현
class HybridEngine: Engine {
    
}

// 'Car' class를 상속받는  'HybridCar' class 구현
class HybridCar: Car {
    // 객체의 엔진을 바꿀 수 있는 메서드 switchEngine
    // 파라미터로 EngineType 타입을 받으며 switch 구문을 통해
    // 현재 엔진이 내연기관이라면 전기모터로 반대로 전기모터면 내연기관으로 엔진 변환
    func switchEngine(to: EngineType) {
        switch to {
        case .gasoline, .diesel:
            self.engine.mainEngineType = .electric
            print("엔진이 '내연기관'에서 '전기모터'로 변환 되었습니다!")
        case .electric:
            self.engine.mainEngineType = .gasoline
            print("엔진이 '전기모터'에서 '내연기관'로 변환 되었습니다!")
        }
    }
    
    // 'Car' class에 정의되어 있는 drive 메서드를 override 하여 Hybrid 차종에 맞게 내용 수정
    override func drive() {
        print("하이브리드 차는 저속 시 전기모터 고속 시 내연기관으로 달립니다!")
    }
}

// MARK: - 상속을 사용하여 기능을 추가하는 것과, 프로토콜 채택을 통해서 기능을 추가하는 것의 장단점, 차이를 고민하고 주석으로 서술해주세요.

// MARK: 상속
// 장점: 중복되는 정의 코드를 줄일 수 있다.
// 'Car', 'ElectricCar', 'HybridCar'에는 모두 'Car'에 정의한 4가지 상태를 가지게 되는데 'ElectricCar', 'HybridCar'는 이를 'Car' 클래스를 상속받게 됨으로써 동일한 코드를 추가로 작성할 필요가 없게 된다. 인스턴스 생성 시 'Car'에 정의되어 있는 init 구문을 동일하게 사용할 수 있는 장점이 생기게 된다.

// 단점: 현재 상황에서는 부적절한 코드와 부득이하게 코드를 추가로 작성해야 한다.
// 'Car' 클래스에는 차량의 동작을 정의하는 여러개의 메서드가 존재하는데 이는 모든 종류의 차량의 동작 방식을 구현해주고 있다.
// 가령 단순 내연기관의 차종이라면 배터리를 충전해야하는 charge 메서드는 필요없을 것이며
// 반대로 전기차종이라면 주유를 담당하는 refuel 메서드는 필요없을 것이다.
// 하지만 상속이라는 구조를 가지게 되면서 'Car'를 상속받는 여러 모델들에 기능을 'Car'가 담당해야하는 상황이 생기게 되는 것이다.
// 이를 보다 기능적으로 분리하기 위해 프로토콜을 사용해볼 수 있다.
// 아래는 프로토콜을 사용한 기능분리 코드이다.


// MARK: - protocol을 사용한 기능 분리
// 장점: 각각의 차들에 필요한 기능은 분리하여 작업할 수 있다.
// 위 코드와 같이 상속을 사용했을 때는 단일 상속 및 기능 분리가 쉽지 않고 코드가 방대해질 수록 종속 관계가 심해질 수 있다는 단점이 존재한다.
// 이를 필요한 기능들만 명확하게 살리고 사용할 수 있는 부분에서 프로토콜의 장점이 보이게 되는 것이다.
// 또한 Swift에서 프로토콜은 여러 프로토콜을 채택 가능한데 바로 아래의 코드에서
// BasicCarFeatures 프로토콜을 채택하는 EngineCarFeatures, ElectricCarFeatures 그리고 EngineCarFeatures, ElectricCarFeatures 프로토콜을 채택하는 HybridCarFeatures 프로토콜 있다.
// HybridCarFeatures 프로토콜은 EngineCarFeatures, ElectricCarFeatures 프로토콜을 채택하게 되면서 BasicCarFeatures 프로토콜을 중복으로 채택받게 되는데 이는 Swift 언어 자체에서 중복을 방지해준다고 한다.
// 따라서 여러 프로토콜을 채택하더라도 같은 정의는 알아서 중복을 처리하여 메모리가 낭비되지 않도록 설정해준다고 한다.
// 여러 프로토콜을 포함한 클래스와 클래스 내부의 메서드 그리고 override한 메서드까지 확인할 수 있다.
// override 하여 super 키워드까지 작성하면 기존에 구현되어 있던 내용을 호출할 수 있고
// 또, 호출하지 않으며 새로운 내용을 구현할 수도 있다.
// 구현된 내용은 아래의 코드로 확인할 수 있다.

// 자동차의 기본 기능을 정의한 프로토콜 'BasicCarFeatures'
protocol BasicCarFeatures {
    func drive()
    func stop()
}

// 내연기관 모델에 필요한 주유 기능을 정의한 프로토콜 'EngineCarFeatures'
protocol EngineCarFeatures: BasicCarFeatures {
    func refuel()
}

// 전기 모델에 필요한 충전 기능을 정의한 프로토콜 'ElectricCarFeatures'
protocol ElectricCarFeatures: BasicCarFeatures {
    func charge()
}

// 내연기관, 전기모터를 모두 사용 가능한 하이브리드 기능을 정의한 프로토콜 'HybridCarFeatures'
protocol HybridCarFeatures: EngineCarFeatures, ElectricCarFeatures {
    func switchEngine(to: EngineType)
}

// Base 클래스 'Car' 구현
class Car2: EngineCarFeatures {
    
    // 4가지 상태 정의
    let brand: String
    let model: String
    let year: Int
    let engine: Engine
    
    // 초기화 코드 구현
    init(brand: String, model: String, year: Int, engine: Engine) {
        self.brand = brand
        self.model = model
        self.year = year
        self.engine = engine
    }
    
    func drive() {
        print("내연기관 \(model)이(가) 달리고 있습니다!")
    }
    
    func stop() {
        print("내연기관 \(model)이(가) 멈췄습니다!")
    }
    
    func refuel() {
        print("내연기관 \(model)이(가) 주유되고 있습니다!")
    }
}

class ElectricCar2: Car2, ElectricCarFeatures {

    override func drive() {
        print("전기차 \(model)이(가) 달리고 있습니다!")
    }
    
    override func stop() {
        print("전기차 \(model)이(가) 멈췄습니다!")
    }
    
    func charge() {
        print("전기차 \(model)이(가) 충전되고 있습니다...")
    }
}

class HybridCar2: Car2, HybridCarFeatures {
    
    override func drive() {
        print("하이브리드 \(model)이(가) 달리고 있습니다! 하이브리드는 저속 시 전기모터 고속 시 엔진으로 달립니다!")
    }
    
    override func stop() {
        print("하이브리드 \(model)이(가) 멈췄습니다!")
    }
    
    override func refuel() {
        print("하이브리드 \(model)이(가) 주유되고 있습니다...")
    }
    
    func charge() {
        print("하이브리드 \(model)이(가) 전기 모터가 충전되고 있습니다...")
    }
    
    func switchEngine(to: EngineType) {
        switch to {
        case .gasoline, .diesel:
            self.engine.mainEngineType = .electric
            print("\(model)의 엔진이 '내연기관'에서 '전기모터'로 변환 되었습니다!")
        case .electric:
            self.engine.mainEngineType = .gasoline
            print("\(model)의 엔진이 '전기모터'에서 '내연기관'로 변환 되었습니다!")
        }
    }
    
}
