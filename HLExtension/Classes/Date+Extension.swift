//
//  Date+Extension.swift
//  HLExtension
//
//  Created by Hieu Lam on 10/26/18.
//

public extension Date {
    var millisecondsSince1970: Double {
        return (self.timeIntervalSince1970 * 1000.0).rounded()
    }
}

