//
//  ReadingsDataModel.swift
//  Spot On Sugars
//
//  Created by Luc Fewer II on 10/17/17.
//  Copyright © 2017 Lucas Fewer II. All rights reserved.
//

import UIKit

class ReadingsDataModel {
    
    //MARK: Properties
    
    var glucoseReading: Int = 0
    var carbsReading: Int = 0
    var bolusReading: Int = 0
    var date: Date
    var time: Date


//MARK: Initialization

init?(glucoseReading: Int, carbsReading: Int, bolusReading: Int, date: Date, time: Date) {
    
    // Initialize stored properties.
    self.glucoseReading = glucoseReading
    self.carbsReading = carbsReading
    self.bolusReading = bolusReading
    self.date = date
    self.time = time
    }
    
}
