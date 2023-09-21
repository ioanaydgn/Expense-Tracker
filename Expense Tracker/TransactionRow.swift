//
//  TransactionRow.swift
//  Expense Tracker
//
//  Created by Mert Aydoğan on 21.09.2023.
//

import SwiftUI
import SwiftUIFontIcon

struct TransactionRow: View {
    var transaction: Transaction
    var body: some View {
        HStack(spacing: 20) {
            // MARK: Transaction Category Icon
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .fill(Color.icon.opacity(0.3))
                .frame(width: 44,height: 44)
                .overlay {
                    FontIcon.text(.awesome5Solid(code: .icons),fontsize: 24, color: Color.icon)
                }
            
            VStack(alignment: .leading, spacing: 6 ){
                // MARK: Transaction Merchant
                Text(transaction.merchant)
                    .font(.subheadline)
                    .bold()
                    .lineLimit(1)
                // MARK: Transaction Category
                Text(transaction.category)
                    .font(.footnote)
                    .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                    .lineLimit(1)
                // MARK: Transaction Date
                Text(transaction.dateParsed, format: .dateTime.day().month().year())
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
            Spacer()
            // MARK: Transaction Amount
            let currencyCode = "LEI"
            let formattedAmount = String(format: "%.2f %@",transaction.signedAmount ,currencyCode)
            Text(formattedAmount)
                .bold()
                .foregroundColor(transaction.type == TransactionType.credit.rawValue ? Color.text : .primary)
                
            
        }
        .padding([.top,.bottom],8)
    }
}

#Preview {
    TransactionRow(transaction: transactionPreviewData)
}
