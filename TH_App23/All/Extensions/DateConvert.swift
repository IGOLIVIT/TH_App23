//
//  DateConvert.swift
//  TH_App23
//
//  Created by IGOR on 28/01/2025.
//

import SwiftUI

extension Date {
    
    func convertDate(format: String) -> String {
        
        let date = self
        let formatter = DateFormatter()
        
        formatter.dateFormat = format
        
        return formatter.string(from: date)
    }
}
