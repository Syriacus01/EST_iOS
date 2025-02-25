
//  main.swift
//  0206

import Foundation

class Car {
    // 멤버 필드 선언
    // 캡슐화 (private)
    var color: String
    var speed: Int
    
    // 생성자 - 초기화 함수
    init(color: String, speed: Int) {
        // 필드(self) = 매개변수
        self.color = color
        self.speed = speed
    }
        // 멤버 메서드 함수 - 객체 외부에서 접근
    func drive() {
        print("\(color) 자동차가 \(speed) km/h로 주행합니다.")
    }
}

// 객체를 생성하고 멤버함수 호출
let sonata = Car(color: "검정색", speed: 110)
let grandeur = Car(color: "하얀색", speed: 120)

// 리스트에 넣을 수 있는가?
let carList: [Car] = [sonata, grandeur]
let carList2: [Car] = [Car(color: "보라색", speed: 90), Car(color: "파란색", speed: 130)]

// 방법 1
// sonata.drive()
// grandeur.drive()

for car in carList {
    car.drive()
}

for (i, car) in carList2.enumerated() {
    print(i, terminator: ": ")
    car.drive()
}
