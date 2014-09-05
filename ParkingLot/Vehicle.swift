//
//  Vehicle.swift
//  ParkingLot
//
//  Created by Joe Kueser on 9/4/14.
//  Copyright (c) 2014 Joe Kueser. All rights reserved.
//

import Foundation

public class Vehicle {
    public var spot:ParkingSpot?
    
    public init() {}
    
    public func park(spot: ParkingSpot) {
        self.spot = spot
    }
    
    public func canPark(spot: ParkingSpot) -> Bool {
        return spot is VehicleSpot
    }
    
    public func isParked() -> Bool {
        return self.spot != nil
    }
    
    public func unPark() {
        self.spot = nil
    }
}