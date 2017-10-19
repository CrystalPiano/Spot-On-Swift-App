//
//  HealthKitIntegration .swift
//  SpotOn
//
//  Created by Luc Fewer II on 10/19/17.
//  Copyright © 2017 Lucas Fewer II. All rights reserved.
//

import UIKit
import HealthKit
import HealthKitUI

class MasterViewController: UITableViewController {
    
    private let authorizeHealthKitSection = 2
    
    private func authorizeHealthKit() {
        
    }
    
    // MARK: - UITableView Delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.section == authorizeHealthKitSection {
            authorizeHealthKit()
        }
    }
}

class ReadingDataStore {
    
    class func save(ReadingsDataModel: ReadingsDataModel,
                    completion: @escaping ((Bool, Error?) -> Swift.Void)) {
        
    }
    
}
