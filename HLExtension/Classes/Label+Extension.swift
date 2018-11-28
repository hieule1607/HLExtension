//
//  Label+Extension.swift
//  HLExtension
//
//  Created by Hieu Lam on 11/28/18.
//

public extension UILabel {
    func halfTextColorChange (fullText : String , changeText : String, attributeDict: [NSAttributedStringKey:Any] ) {
        let strNumber: NSString = fullText as NSString
        let range = (strNumber).range(of: changeText)
        
        let attribute = NSMutableAttributedString.init(string: fullText)
        for attri in attributeDict {
            attribute.addAttribute(attri.key, value: attri.value, range: range)
        }
        
        self.attributedText = attribute
    }
}
