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
    var date: UIDatePicker?
    var time: UIPickerView?


//MARK: Initialization

init?(glucoseReading: Int, carbsReading: Int, bolusReading: Int, date: UIDatePicker?, time: UIPickerView?) {
    
    // Initialize stored properties.
    self.glucoseReading = glucoseReading
    self.carbsReading = carbsReading
    self.bolusReading = bolusReading
    self.date = date
    self.time = time
    }
    
}
