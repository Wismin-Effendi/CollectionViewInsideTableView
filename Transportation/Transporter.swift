//
//  Transporter.swift
//  Transportation
//
//  Created by Wismin Effendi on 6/5/17.
//  Copyright © 2017 iShinobi. All rights reserved.
//

import Foundation

struct Transporter {

    let title: String
    let kind: Categories
    let imageName: String
    
    enum Categories: Int {
        case bicycle = 0
        case motorcycle
        case car
        case train
        case ship
        case helicopter
        case airplane
        
        static let allValues = [bicycle, motorcycle, car, train, helicopter, airplane]
        
        func description() -> String {
            switch self {
            case .bicycle:
                return "Bicycle"
            case .motorcycle:
                return "Motorcycle"
            case .car:
                return "Car"
            case .train:
                return "Train"
            case .ship:
                return "Ship"
            case .helicopter:
                return "Helicopter"
            case .airplane:
                return "Airplane"
            }
        }
    }
}
