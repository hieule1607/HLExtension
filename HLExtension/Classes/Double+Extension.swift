//
//  Double+Extension.swift
//  HLExtension
//
//  Created by Hieu Lam on 10/29/18.
//

public extension Double {
    var clean: String {
        return self.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", self) : String(self)
    }
    
}
