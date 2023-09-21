//
//  PreviewData.swift
//  Expense Tracker
//
//  Created by Mert Aydoğan on 21.09.2023.
//

import Foundation
import SwiftUI

var transactionPreviewData = Transaction(id: 1, date: "20/09/2023", institution: "BTPay", account: "Visa BTPay", merchant: "Tazz", amount: 107.40, type: "debit", categoryId: 201, category: "Food", isPending: false, isTransfer: false, isExpense: true, isEdited: false)


var transactionListPreviewData = [Transaction](repeating: transactionPreviewData, count: 10)
