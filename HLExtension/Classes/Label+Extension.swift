//
//  Label+Extension.swift
//  HLExtension
//
//  Created by Hieu Lam on 11/28/18.
//

public extension UILabel {
    func highlightSubString (fullText : String , changeText : String, attributeDict: [NSAttributedStringKey:Any] ) {
        let strNumber: NSString = fullText as NSString
        let range = (strNumber).range(of: changeText)
        
        let attribute = NSMutableAttributedString.init(string: fullText)
        for attri in attributeDict {
            attribute.addAttribute(attri.key, value: attri.value, range: range)
        }
        
        self.attributedText = attribute
    }
    
    func setFontColor(str: String, font: UIFont?, color: UIColor?){
        self.attributedText = NSAttributedString(string: str, attributes: [NSAttributedStringKey.foregroundColor : color ?? UIColor.black, NSAttributedStringKey.font: font ?? UIFont.systemFont(ofSize: 16)])
    }
}
