//
//  Calculator.swift
//  Tipsy
//
//  Created by Александр Андреев on 30.06.2023.
//

import Foundation

import UIKit

struct Calculator {
    
    var bill: Double?
    var countGuests: Int = 1
    var tipPersentage: Double?
    
    mutating func addBill(_ billCheck: Double) {
        bill = billCheck
    }
    
    mutating func addCountGuests(_ count: Int) {
        countGuests = count
    }
    
    mutating func addTypePersentage(_ type: String) {
        
        if let number = Double(type) {
            tipPersentage = number / 100
        } else {
            print("Невозможно преобразовать строку в число.")
        }

    }
    
    func getAnswer() -> Double {
        var answer: Double = 0
        answer = bill! * (tipPersentage! + 1) / Double(countGuests)
        return answer
    }
}
