//
//  ParkingSpot.swift
//  ParkingLot
//
//  Created by Joe Kueser on 9/4/14.
//  Copyright (c) 2014 Joe Kueser. All rights reserved.
//

import Foundation

public class ParkingSpot {
    public var vehicle: Vehicle?
    
    public init() {
        self.vehicle = nil
    }
    
    public init(vehicle: Vehicle) {
        self.vehicle = vehicle
    }
}