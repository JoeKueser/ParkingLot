//
//  ParkingLot.swift
//  ParkingLot
//
//  Created by Joe Kueser on 9/4/14.
//  Copyright (c) 2014 Joe Kueser. All rights reserved.
//

import Foundation

class ParkingLot {
    
    private var availableSpots:[ParkingSpot] = [];
    
    init() {
        
        for index in 1...80 {
            availableSpots.append(VehicleSpot())
        }
        
        for index in 1...10 {
            availableSpots.append(MotorcycleSpot())
        }
        
        for index in 1...10 {
            availableSpots.append(HandicappedVehicleSpot())
        }
    }
    
    func park(vehicle: Vehicle) {
        for index in 0..<self.availableSpots.count {
            var spot = availableSpots[index]
            if vehicle.canPark(spot) {
                vehicle.park(spot)
                availableSpots.removeAtIndex(index)
                break
            }
        }
        
        if !vehicle.isParked() {
            println("Could not park vehicle")
        }
    }
    
    func unPark(vehicle: Vehicle) {
        if !vehicle.isParked() {
            println("Vehicle is not parked \(vehicle)")
        } else {
            availableSpots.append(vehicle.spot!)
            vehicle.unPark()
        }
    }
}