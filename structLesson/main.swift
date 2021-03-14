//
//  main.swift
//  structLesson
//
//  Created by Арген on 14.03.2021.
//

import Foundation

enum MarkCar: String{
    case bmw = "M5"
    case mercedes = "AMG"
    case toyota = "Camry"
    case kia = "K5"
    
}

enum Color: String {
    case red = "Красный"
    case black = "Черный"
    case white = "Белый"
}

enum OpenTheDoor {
    case open, close
}

struct SportCar {
    let car: MarkCar
    var year: Int? = 2011
    let color: Color
    let baggage: Double
    let door: OpenTheDoor
    let engine: Bool
    var km : Double
    
    init(car:MarkCar,year:Int,color:Color,baggage:Double,door:OpenTheDoor,engine:Bool,km:Double) {
        self.car = car
        self.year = year
        self.color = color
        self.baggage = baggage
        self.door = door
        self.engine = engine
        self.km = km
    }
    
    init(car:MarkCar) {
        self.car = car
        year = 2010
        color = .white
        baggage = 11.0
        door = .close
        engine = true
        km = 150

}
    
    init() {
        self.car = .mercedes
        year = 2014
        color = .red
        baggage = 100
        door = .open
        engine = false
        km = 240
    }
    
    mutating func changeKm (to value: Double) {
        print("Машина уже ездил \(value) km")
        self.km = value
}
  
    func printCar(_ car:SportCar){
        
        switch car.car{
        case .bmw:
            print("M5")
        case .kia:
            print("K5")
        case .mercedes:
            print("AMG")
        case .toyota:
            print("Camry")
        
        }
        if let yearCar = year {
            print("Год выпуска: \(yearCar)")
        }else{
            fatalError()
        }
            
        switch car.color {
        case .black:
            print("Цвет: \(car.color.rawValue)")
        case .red:
            print("Цвет: \(car.color.rawValue)")
        case .white:
            print("Цвет: \(car.color.rawValue)")
        
            }
        
        print("Объем багажа: \(car.baggage)")
       
        print("Двери: \(car.door == .open ? "Открыто" : "Закрыто")")
        
        if car.engine{
            print("Двигатель: Start!")
        }else{
            print("Двигатель: Stop!")
        }
        print("\(car.km)")
        
    }
}
var infoCar = SportCar(car: .bmw, year: 2012, color: .black, baggage: 0, door: .open, engine: true, km: 30)
var infoCar1 = SportCar(car: .kia, year: 2018, color: .red, baggage: 0, door: .close, engine: false, km: 40)
var infoCar2 = SportCar(car: .mercedes, year: 2019, color: .white, baggage: 0, door: .open, engine: true, km: 50)
var infoCar3 = SportCar(car: .toyota)
var infoCar4 = SportCar()

infoCar = infoCar2

infoCar.printCar(infoCar)

print("--------------------------")
infoCar4.printCar(infoCar4)
print("--------------------------")
infoCar3.printCar(infoCar3)
print("--------------------------")
infoCar.printCar(infoCar1)
print("--------------------------")


//---------------------------------------------------------------

enum Seats: Int{
    case two = 2
    case three = 3
    case four = 4
}

enum Engine {
    case start, stop
}

enum MarkTrack{
    case Mercedes
    case Scorpion
    case Hyundai
}

struct TrackCar {
    let markTrack: MarkTrack
    let year: Int
    var color: String
    let seatsOfNum: Seats
    var luggage: Double
    let engineState: Engine

    
    init(markTrack: MarkTrack, year: Int, color: String, seatsOfNum: Seats, luggage: Double, engineState: Engine) {
        self.markTrack = markTrack
        self.year = 2016
        self.color = "White"
        self.seatsOfNum = seatsOfNum
        self.luggage = luggage
        self.engineState = engineState
        
    }
    
    init(color:String) {
        self.markTrack = .Hyundai
        self.color = color
        self.year = 2014
        self.seatsOfNum = .three
        self.luggage = 150
        self.engineState = .stop
    }
    
    init?(markTrack: MarkTrack, year: Int, color: String, seatsOfNum: Seats, luggage: Double) {
        guard year >= 2005 else { return nil }
        
        self.markTrack = markTrack
        self.year = year
        self.color = "Silver"
        self.seatsOfNum = .four
        self.luggage = luggage
        self.engineState = .stop
    }

    
    mutating func changColor (_ view: String) {
        print("Машина перекрашена на \(view) цвет")
        color = view
        
        }
    
    func infoTrack(_ car:TrackCar){
        
        if car.markTrack == .Hyundai {
            print("Производства: \(car.markTrack) ")
        }else if car.markTrack == .Mercedes{
            print("Производства: \(car.markTrack) ")
        }else if car.markTrack == .Scorpion{
            print("Производства: \(car.markTrack) ")
        }
        
        print("Год выпуска: \(car.year)")
        
        print("Цвет TrackCar: \(car.color)")
        
        switch car.seatsOfNum {
        case .two:
            print("Mашинa \(car.seatsOfNum.rawValue) местный")
        case .four:
            print("Mашинa \(car.seatsOfNum.rawValue) местный")
        case .three:
            print("Mашинa \(car.seatsOfNum.rawValue) местный")
        }
        
        if car.luggage <= 0 {
            print("Багаж пока что пустой")
        }else if car.luggage >= 140 {
            print("В багажнике еще есть место, можно грузить.")
        }else if car.luggage >= 160 || car.luggage <= 200 {
            print("К сожелению! багаж полный больше некуда!")
        }
        
        print(car.engineState == .start ? "Машина заведена" : "Машина заглущена")
        
                
    }
    
}

var trackcar1 = TrackCar(color: "Black")
var trackCar2 = TrackCar(markTrack: .Mercedes, year: 2020, color: "Blue", seatsOfNum: .four, luggage: 0, engineState: .start)

print(trackCar2.infoTrack(trackCar2))
print("--------------------------")
trackcar1.changColor("Green")
print(trackcar1.infoTrack(trackcar1))

print("--------------------------")
var trackCar3 = TrackCar(markTrack: .Scorpion, year: 2006, color: "Grey", seatsOfNum: .two, luggage: 120)

if let trackCar3 = trackCar3 {
    print(trackCar3.infoTrack(trackCar3))
}


