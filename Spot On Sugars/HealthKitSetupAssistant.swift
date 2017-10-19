//
//  HealthKitIntegration .swift
//  SpotOn
//
//  Created by Luc Fewer II on 10/19/17.
//  Copyright © 2017 Lucas Fewer II. All rights reserved.
//

import HealthKit

class HealthKitSetupAssistant {
  
  private enum HealthkitSetupError: Error {
    case notAvailableOnDevice
    case dataTypeNotAvailable
  }
  
  class func authorizeHealthKit(completion: @escaping (Bool, Error?) -> Swift.Void) {
    
  }
}
