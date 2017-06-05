//
//  Transport.swift
//  Transportation
//
//  Created by Wismin Effendi on 6/5/17.
//  Copyright © 2017 iShinobi. All rights reserved.
//

import Foundation

struct Transport {
    
    enum Categories: String {
        case bicycle = "Bicycle"
        case motorcycle = "Motorcycle"
        case car = "Car"
        case train = "Train"
        case helicopter = "Helicopter"
        case airplane = "Airplane"
        
        static let allValues = [bicycle, motorcycle, car, train, helicopter, airplane]
    }
}
