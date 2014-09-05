//
//  Motorcycle.swift
//  ParkingLot
//
//  Created by Joe Kueser on 9/4/14.
//  Copyright (c) 2014 Joe Kueser. All rights reserved.
//

import Foundation

class Motorcycle: Vehicle {
    
    override func canPark(spot: ParkingSpot) -> Bool {
        return super.canPark(spot) || spot is MotorcycleSpot
    }
}