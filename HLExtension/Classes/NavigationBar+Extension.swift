//
//  NavigationBar+Extension.swift
//  HLExtension
//
//  Created by Hieu Lam on 11/27/18.
//

public extension UINavigationBar {
    
    func shouldRemoveShadow(_ value: Bool) -> Void {
        if value {
            self.setValue(true, forKey: "hidesShadow")
        } else {
            self.setValue(false, forKey: "hidesShadow")
        }
    }
}
