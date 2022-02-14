//
//  UpdatesItem.swift
//  UIAccess
//
//  Created by Kshitij Gotiwale on 2/3/22.
//

import UIKit

class Item: Equatable {
    var name: String
    var classification: String
    var dateUpdated: String
//    var daysBack: Int
    
    static func == (lhs: Item, rhs: Item) -> Bool {
        return lhs.name == rhs.name
        && lhs.classification == rhs.classification
        && lhs.dateUpdated == rhs.dateUpdated
        
    }

    init(name: String, classification: String, dateUpdated: String) {
        self.name = name
        self.classification = classification
        self.dateUpdated = dateUpdated
    }
    
    convenience init(random: Bool = false) {
        if random {
            let disease = ["Heart Arrhythmias 2020", "Postpartum Hemorrage", "Severe Hypertension in Pregnancy: Management", "Safe Prevention of the Primary Cesarean Delivery", "Management of Cervical Cancer Screening", "Viral Hepatitis in Pregnancy", "Gestational Diabetes Mellitus", "Management of Intrapartum Fetal Heart Rate Traces"]
            let mainClass = ["HEART DISORDER", "C-SECTION", "HYPERTENSION", "PREGNANCY", "CERVICAL CANCER", "PREGNANCY", "COLON"]
            let updateDate = ["2022-02-02", "2022-01-26", "2021-01-15", "2021-12-28", "2021-11-29", "2021-12-24", "2022-01-11"]
            
            let randomDisease = disease.randomElement()!
            let randomMainclass = mainClass.randomElement()!
            let randomDate = updateDate.randomElement()!
            
            
            
            
            self.init(name: randomDisease,
                      classification: randomMainclass,
                      dateUpdated: randomDate)
        } else {
            self.init(name: "", classification: "", dateUpdated: "")
        }
        
    }
    
    /* jello hello fellow what uhh*/
}
