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
        
        var vehicleSpots = [VehicleSpot](count: 80, repeatedValue: nil)
        var motorcycleSpots = [MotorcycleSpot](count: 10, repeatedValue: nil)
        var handicapSpots = [HandicappedVehicleSpot](count: 10, repeatedValue: nil)
        
        availableSpots = vehicleSpots + motorcycleSpots + handicapSpots
    }
    
    func park(vehicle: Vehicle) {
        for (index, spot) in enumerate(availableSpots) {
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