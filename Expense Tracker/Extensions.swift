//
//  Extensions.swift
//  Expense Tracker
//
//  Created by Mert Aydoğan on 21.09.2023.
//

import Foundation
import SwiftUI

extension Color {
    static let Background = Color("Background")
    static let Icon = Color("Icon")
    static let Text = Color("Text")
    static let systemBackground = Color(uiColor: .systemBackground)
}

extension DateFormatter {
    static let allNumericEU: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        return formatter
    }()
}

extension String {
    func dateParsed() -> Date {
        // DateFormatter.allNumericEU'yu kullanarak tarih çözümleme işlemi
        if let parsedDate = DateFormatter.allNumericEU.date(from: self) {
            return parsedDate
        } else {
            return Date()
        }
    }
}

